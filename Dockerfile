FROM darribas/gds_py:5.0

# Local docs
RUN rm -R work/
RUN mkdir ${HOME}/content
COPY ./content ${HOME}/content

# Fix permissions
USER root
RUN chown -R ${NB_UID} ${HOME}
RUN rm -rf ${HOME}/content/slides/html \
 && rm ${HOME}/content/bibliography.bib \
       ${HOME}/content/*.md
USER ${NB_USER}
