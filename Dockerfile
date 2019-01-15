FROM mdstudio/cerise:0.2.2

COPY api /home/cerise/api
RUN chown -R cerise:cerise /home/cerise/api && \
    chmod +x /home/cerise/api/mdstudio/files/install_base.sh && \
    chmod +x /home/cerise/api/mdstudio/files/wrap_cwltiny.sh && \
    chmod +x /home/cerise/api/mdstudio/files/gromit/call_gromit.sh && \
    chmod +x /home/cerise/api/mdstudio/files/gromit/gromit_mpi.sh && \
    chmod +x /home/cerise/api/mdstudio/files/energies/call_decompose.sh && \
    chmod +x /home/cerise/api/mdstudio/files/energies/call_getenergies.sh
