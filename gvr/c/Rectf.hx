package gvr.c;

@:include('linc_gvr.h')
@:native('gvr_rectf')
extern class GvrRectf {
	var top:Float;
	var bottom:Float;
	var left:Float;
	var right:Float;
}

@:native('::cpp::Struct<gvr_rectf>')
extern class Rectf extends GvrRectf {}
