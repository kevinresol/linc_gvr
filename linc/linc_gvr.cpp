//hxcpp include should be first
#include <hxcpp.h>
#include <vector>
#include "./linc_gvr.h"

namespace linc {

    namespace gvr {

        gvr_buffer_viewport_list* get_recommended_buffer_viewports(gvr_context* gvr) {
            gvr_buffer_viewport_list* viewport_list = gvr_buffer_viewport_list_create(gvr);
            gvr_get_recommended_buffer_viewports(gvr, viewport_list);
            return viewport_list;
        }
        
        gvr_buffer_viewport* buffer_viewport_list_get_item(gvr_context* gvr, gvr_buffer_viewport_list* viewport_list, int index) {
            gvr_buffer_viewport* viewport = gvr_buffer_viewport_create(gvr);
            gvr_buffer_viewport_list_get_item(viewport_list, index, viewport);
            return viewport;
        }
        
        gvr_swap_chain* swap_chain_create(gvr_context* gvr, int size) {
            std::vector<const gvr_buffer_spec*> specs;
            gvr_buffer_spec *spec = gvr_buffer_spec_create(gvr);
            specs.push_back(spec);
            gvr_swap_chain* c = gvr_swap_chain_create(gvr, specs.data(), (int32_t) size);
            return c;
        }

    } //gvr namespace

} //linc
