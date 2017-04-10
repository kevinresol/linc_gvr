package gvr.c;

import cpp.Pointer;
import gvr.c.BufferSpec;
import gvr.c.Context;

@:keep
@:include('linc_gvr.h')
#if !display
@:build(linc.Linc.touch())
@:build(linc.Linc.xml('gvr', '../../'))
#end

extern class Gvr {
	
	@:native('linc::gvr::create')
	static function create():Context;
	
	@:native('linc::gvr::destroy')
	static function destroy():Context;

	// @:native('gvr_destroy')
	// static function destroy(context:ContextAddress):Void;
	
	@:native('gvr_clear_error')
	static function clearError(context:Context):Void;


	// @:native('gvr_distort_to_screen')
	// void distort_to_screen(context:Context, int32_t texture_id, const gvr_buffer_viewport_list *viewport_list, gvr_mat4f head_space_from_start_space, gvr_clock_time_point target_presentation_time)	
	
	// @:native('gvr_get_async_reprojection_enabled')
	// static function get_async_reprojection_enabled(context:Context):Bool;
	
	@:native('gvr_get_error')
	static function getError(context:Context):Int;
	
	inline static function getErrorString(code:Int):String {
		return (untyped __cpp__('gvr_get_error_string({0})', code):cpp.ConstCharStar);
	}
	
	@:native('gvr_get_maximum_effective_render_target_size')
	static function getMaximumEffectiveRenderTargetSize(context:Context):Sizei;
	
	// @:native('gvr_get_screen_buffer_viewports')
	// static function get_screen_buffer_viewports(context:Context, gvr_buffer_viewport_list *viewport_list):Void;
	
	// @:native('gvr_get_screen_target_size')
	// static function get_screen_target_size(context:Context):Sizei;
	
	// @:native('gvr_get_user_prefs')
	// const gvr_user_prefs * get_user_prefs(context:Context)	
	
	// @:native('gvr_get_version')
	// static function get_version():Version;
	
	// @:native('gvr_get_version_string')
	// static function get_version_string():String;
	
	@:native('gvr_initialize_gl')
	static function initializeGl(context:Context):Void;
	
	@:native('linc::gvr::set_surface_size')
	static function setSurfaceSize(context:Context, width:Int, height:Int):Void;
	
	// @:native('gvr_user_prefs_get_controller_handedness')
	// static function user_prefs_get_controller_handedness(const gvr_user_prefs *user_prefs):Int;
	
	
	// BufferSpec
	
	@:native('gvr_buffer_spec_create')
	static function bufferSpecCreate(context:Context):BufferSpec;
	
	@:native('gvr_buffer_spec_get_size')
	static function bufferSpecGetSize(spec:BufferSpec):Sizei;
	
	// BufferViewportList
	
	@:native('gvr_buffer_viewport_list_create')
	static function bufferViewportListCreate(context:Context):BufferViewportList;
	
	@:native('gvr_buffer_viewport_list_get_item')
	static function bufferViewportListGetItem(list:BufferViewportList, index:Int, viewport:BufferViewport):Void;
	
	@:native('gvr_get_recommended_buffer_viewports')
	static function getRecommendedBufferViewports(context:Context, list:BufferViewportList):Void;
	
	// Viewport
	
	@:native('gvr_buffer_viewport_create')
	static function bufferViewportCreate(context:Context):BufferViewport;
	
	@:native('gvr_buffer_viewport_get_source_uv')
	static function bufferViewportGetSourceUv(viewport:BufferViewport):Rectf;
	
	@:native('gvr_buffer_viewport_get_source_fov')
	static function bufferViewportGetSourceFov(viewport:BufferViewport):Rectf;
	
	
	// SwapChain
	
	@:native('linc::gvr::swap_chain_create')
	static function swapChainCreate(context:Context, size:Int):SwapChain;
	
	@:native('linc::gvr::swap_chain_resize_buffer')
	static function swapChainResizeBuffer(swapChain:SwapChain, index:Int, width:Int, height:Int):Void;
	
	@:native('gvr_swap_chain_acquire_frame')
	static function swapChainAcquireFrame(swapChain:SwapChain):Frame;
	
	@:native('gvr_swap_chain_get_buffer_size')
	static function swapChainGetBufferSize(swapChain:SwapChain, index:Int):Sizei;
	
	// Frame
	
	@:native('gvr_frame_get_framebuffer_object')
	static function frameGetFramebufferObject(frame:Frame, index:Int):Int;
	
	@:native('gvr_frame_bind_buffer')
	static function frameBindBuffer(frame:Frame, index:Int):Void;
	
	@:native('gvr_frame_unbind')
	static function frameUnbind(frame:Frame):Void;
	
	inline static function frameSubmit(frame:Frame, viewportList:BufferViewportList, headSpaceFromStartSpace:Mat4f):Void {
		untyped __cpp__('gvr_frame_submit(&({0}), {1}, {2})', frame.ptr, viewportList, headSpaceFromStartSpace);
	}
	
	
	// Head Mounted Display
	@:native('gvr_get_eye_from_head_matrix')
	static function getEyeFromHeadMatrix(context:Context, eye:Int):Mat4f;
	
	// Head Tracking
	
	@:native('gvr_refresh_viewer_profile')
	static function refreshViewerProfile(context:Context):Void;
	
	@:native('gvr_resume_tracking')
	static function resumeTracking(context:Context):Void;
	
	@:native('gvr_pause_tracking')
	static function pauseTracking(context:Context):Void;
	
	@:native('gvr_get_time_point_now')
	static function getTimePointNow():ClockTimePoint;
	
	@:native('gvr_get_head_space_from_start_space_rotation')
	static function getHeadSpaceFromStartSpaceRotation(context:Context, time:ClockTimePoint):Mat4f;
}
