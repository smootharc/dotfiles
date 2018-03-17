#!/usr/bin/perl

use strict;
use warnings;
use File::Temp;
use File::MimeInfo;
use File::stat;
use Cwd 'abs_path'; 
use 5.22.1;

sub processdir
{

    my @return;

    opendir( my $fh, "$_[0]" ) || die "Usage: $0 [Directory] [Time]\n";

    while (readdir $fh) {

        if ( $_ eq "." || $_ eq ".." || -l $_ ) { next }

        my $fullname = "$_[0]/$_";

        if ( -d $fullname ) { 
            
            push @return, processdir( $fullname )
        
        } else {

            push @return, "$fullname";
        
        }

    }

    closedir $fh;

    return( @return );
} 

sub filesoftype
{
    my @args = @_;
    my $filetype = pop @args;
    my @return;

    foreach(@args) {

        if ( mimetype($_) =~ /$filetype/ ) {
            
            my $ctime = stat($_)->ctime;
            
            push @return, "$ctime\x00$_\n";

        }

    }

    @return = sort @return;

    s/.*\x00// for @return;

    return( @return );
}

my $directory = glob $ARGV[0] // glob "~/Downloads";

my $time = $ARGV[1] // '';

if ( -e $directory and -d $directory ) {
    
    $directory = abs_path($directory);

} else {

    $time = $directory;
    $directory = glob "~/Downloads";

}

my @files = processdir( $directory );

my @images = filesoftype( @files, "image" );

my @videos = filesoftype( @files, "video" );

if ( scalar @images ) {

    my $playlist = new File::Temp( UNLINK => 1 );

    print $playlist $_ for @images;

#    system "qiv", "-tfiF", $playlist;
    system "feh", "-dqFf", $playlist;

} else {

    print "No images found!\n";

}

if ( scalar @videos ) {

    my $playlist = new File::Temp( UNLINK => 1 );

    print $playlist "#EXTM3U\n";

    print $playlist $_ for @videos;

#    system "mpv", "--really-quiet", "--playlist=$playlist";
    system "mpv", "--really-quiet", $playlist;

} else {

    print "No videos found!\n"

}

if ( $directory =~ /Downloads/ ) {

   exec "ddl", $time;

}
