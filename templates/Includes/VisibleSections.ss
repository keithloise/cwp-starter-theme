<div class="container-fluid p-0">
    <div class="row no-gutters">
        <% if $VisibleSections %>
            <% loop $VisibleSections %>
                <section id="section-{$DisplayTypeTrim}{$ID}" class="page-section section-{$DisplayTypeTrim} {$SectionWidth}<% if $SectionPadding != 'none' %> {$SectionPadding} p-2<% end_if %><% if $SectionBgType == 'background-image' %> section-bgImg<% end_if %>" <% if $SectionBgType != 'none' %><% if $SectionBgType == 'background-image' || $SectionBgType == 'background-color' || $SectionBgType == 'background-gradient' %><% if $SectionBgImage || $SectionBgColor || $ColorGradient1 && $ColorGradient2 %> style="<% if $SectionBgType == 'background-image' %>background-image:url('{$SectionBgImage.URL}');<% else_if $SectionBgType == 'background-gradient' %>background-image: linear-gradient(-90deg, #{$ColorGradient1} -50%, #{$ColorGradient2} 100%);<% else %>background-color:#{$SectionBgColor};<% end_if %>"<% end_if %><% end_if %><% end_if %>>
                    <% if $CodeEditor %>
                        $CodeEditor
                    <% end_if %>
                    <div class="section-container">
                        <div class="container-fluid p-0 align-self-center">
                            <div class="row no-gutters">
                                <% if $ShowSectionHeader %>
                                    <div class="<% if $SectionHeaderPosition == 'position-top'%>col-lg-12<% else %>col-lg-4 col-lg-5<% if $SectionHeaderPosition == 'position-right' %> order-last<% end_if %><% end_if %>">
                                        <div class="section-header<% if $SectionHeaderSize != 'none' %> $SectionHeaderSize<% end_if %> wow animate__animated animate__fadeInUp">
                                            <% if $SectionHeader %>
                                                $SectionHeader
                                            <% else %>
                                                <h1 class="section-header--title<% if $SectionHeaderPosition == 'position-top'%> text-center<% end_if %> theme-text-gradient">Your header goes here.</h1>
                                            <% end_if %>
                                        </div>
                                    </div>
                                <% end_if %>
                                <div class="<% if $ShowSectionHeader %><% if $SectionHeaderPosition != 'position-top' %>col-lg-8 col-lg-7<% if $SectionHeaderPosition == 'position-right' %> order-first<% end_if %><% else %>col-lg-12<% end_if %><% else %>col-lg-12<% end_if %>">
                                    <div class="{$DisplayTypeTrim}-container section-body">
                                        $Show
                                    </div>
                                </div>
                                <% if $ShowSectionFooter %>
                                    <div class="col-md-12">
                                        <div class="section-footer<% if $SectionFooterSize != 'none' %> $SectionFooterSize<% end_if %> text-center p-lg-5 wow animate__animated animate__fadeInUp">
                                            <% if $SectionFooter %>{$SectionFooter}<% end_if %>
                                        </div>
                                    </div>
                                <% end_if %>
                            </div>
                        </div>
                        <% if $Pos == 1 %>
                            <div class="scroll-down">
                                <button class="scroll-down--btn animate__animated animate__slow animate__infinite animate__fadeInDown text-white">
                                    <i class="fal fa-angle-down h1"></i>
                                </button>
                            </div>
                        <% end_if %>
                    </div>
                </section>
            <% end_loop %>
        <% end_if %>
    </div>
</div>