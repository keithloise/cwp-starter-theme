<% if $PageBanner %>
    <section id="section-ProjectPageBanner" class="page-section col-lg-12 section-ImageBanner wow animate__animated animate__fadeIn animate__slow">
        <div class="section-container">
            <div class="container-fluid p-0 align-self-center">
                <div class="row no-gutters">
                    <div class="col-lg-12">
                        <div class="ImageBanner-container section-body">
<%--                            <div class="project-banner">--%>
<%--                            <img src="$PageBanner.URL" alt="$Title - $SiteConfig.Title" class="large">--%>
<%--                            </div>--%>
                            <% if $PageBanner %>
                                <div class="image-banner--image bh-large" style="background-image: url('{$PageBanner.URL}');" data-height="100"></div>
                                <% include MouseIconScroll %>
                            <% end_if %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<% end_if %>
<% if $AboutTheProject %>
    <section id="section-ProjectPageContent" class="page-section section-ContentSection col-lg-8 pt-lg-9 pb-lg-5 pl-lg-9 wow animate__animated animate__fadeIn animate__slow">
        <div class="section-container">
            <div class="container p-0">
                <div class="row no-gutters">
                    <div class="col-lg-12">
                        <div class="ContentSection-container section-body wow animate__animated animate__fadeIn animate__slow">
                            $AboutTheProject
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<% end_if %>
<% if $PreContent %>
    <section id="section-ContentSection155" class="page-section section-ContentSection col-lg-8 pl-lg-9 pb-lg-9 wow animate__animated animate__fadeIn animate__slow">
        <div class="section-container">
            <div class="container-fluid p-0">
                <div class="row no-gutters">
                    <div class="col-lg-12">
                        <div class="ContentSection-container section-body container-fluid p-0">
                            <div class="contentSection-content wow animate__animate animate__fadeInUp">$PreContent</div>
                        </div>
                   </div>
               </div>
            </div>
        </div>
    </section>
<% end_if %>
<section id="section-ContentSection156" class="page-section section-ContentSection col-lg-3 pl-lg-9 pb-lg-9 wow animate__animated animate__fadeIn animate__slow">
    <div class="section-container">
        <div class="container-fluid p-0">
            <div class="row no-gutters">
                <div class="col-lg-12">
                    <div class="ContentSection-container section-body container-fluid p-0">
                        <div class="contentSection-content wow animate__animate animate__fadeInRight">
                            <% if $Categories %>
                                <h5><span class="spacing-1 ff-clan font-weight-bold lineheight-3 text-brand">CATEGORIES</span></h5>
                                <% loop $Categories %><p><span class="h4 font-weight-light spacing-1 nunito-sans text-dark">$Title</span></p><% end_loop %>
                            <% end_if %>
                            <% if $ReadableAuthors %>
                                <p><span class="nunito-sans">&nbsp;</span></p>
                                <h5><span class="spacing-1 ff-clan font-weight-bold lineheight-3 text-brand">AUTHOR/S</span></h5>
                                <% loop $ReadableAuthors %><p><span class="h4 font-weight-light spacing-1 nunito-sans text-dark">$Name</span></p><% end_loop %>
                            <% end_if %>
                            <% if $Year %>
                                <p><span class="nunito-sans">&nbsp;</span></p>
                                <h5><span class="spacing-1 ff-clan font-weight-bold lineheight-3 text-brand">DATE</span></h5>
                                <p><span class="h4 font-weight-light spacing-1 nunito-sans text-dark">$Year</span></p>
                            <% end_if %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>