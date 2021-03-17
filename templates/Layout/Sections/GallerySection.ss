<% if $Content %>
    $Content
<% end_if %>
<% if $VisibleGallery %>
    <% loop $VisibleGallery %>
        <button class="accordion-btn active"><span class="h4 font-weight-light lineheight-3 spacing-1">$Year</span> <i class="fal fa-chevron-down"></i></button>
        <div class="panel active">
            <div class="panel--content">
                <div class="container-fluid p-0">
                    <div class="row no-gutters">
                        <% if $Galleries %>
                            <div class="col-lg-12">
                                <div class="grid">
                                    <% loop $Galleries %>
                                        <% if $Image %>
                                            <img src="$Image.URL" class="winners-image">
                                        <% end_if %>
                                    <% end_loop %>
                                </div>
                            </div>
<%--                            <div class="masonry-flex grid">--%>
<%--                                <div class="grid-sizer"></div>--%>
<%--                                <% loop $Galleries %>--%>
<%--                                    <div class="masonry-grid">--%>
<%--                                        <div class="gallery-details">--%>
<%--                                            <% if $Image %>--%>
<%--                                                <img src="$Image.URL" class="winners-image">--%>
<%--                                            <% end_if %>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                <% end_loop %>--%>
<%--                            </div>--%>
                        <% else %>
                            <div class="col-lg-12">
                                $YearContent.RAW
                            </div>
                        <% end_if %>
                    </div>
                </div>
            </div>
        </div>
    <% end_loop %>
<% end_if %>