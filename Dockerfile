FROM rocker/shiny:4.2
# Install system requirements for index.R as needed
#ENV _R_SHLIB_STRIP_=true
#COPY Rprofile.site /etc/R
#RUN install2.r --error --skipinstalled \
#    shiny \
#    forecast \
#    jsonlite \
#    ggplot2 \
#    htmltools \
#    plotly
COPY ./app/* /srv/shiny-server/
USER shiny
EXPOSE 3838
CMD ["/usr/bin/shiny-server"]
