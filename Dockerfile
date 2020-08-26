FROM darribas/gds_py:5.0

# Local docs
RUN rm -R work/
RUN mkdir ${HOME}/content
COPY ./content ${HOME}/content
RUN rm -rf ${HOME}/content/slides/html \
 && rm ${HOME}/content/bibliography.* ${HOME}/content/*.md
# Fix permissions
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
