package js.three;

@:jsRequire("three")
@:native("THREE")
extern enum abstract ToneMapping(Int)
{
    var NoToneMapping; // = 0;
    var LinearToneMapping; // = 1;
    var ReinhardToneMapping; // = 2;
    var CineonToneMapping; // = 3;
    var ACESFilmicToneMapping; // = 4;
    var CustomToneMapping; // = 5;
    var AgXToneMapping; // = 6;
}