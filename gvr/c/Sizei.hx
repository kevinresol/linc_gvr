package gvr.c;

@:include('linc_gvr.h')
@:native('gvr_sizei')
extern class GvrSizei {
	var width:Int;
	var height:Int;
}

@:native('::cpp::Struct<gvr_sizei>')
extern class Sizei extends GvrSizei {}
