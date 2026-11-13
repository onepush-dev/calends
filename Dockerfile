# Calends on Railway: the official upstream image (imetn/calends, MIT), app unmodified.
# Only bakes Railway defaults as ENV (Railway templates drop plain variable values): listen on 8080 (0.0.0.0 is
# upstream's default bind) and keep the SQLite ledger on the Railway volume at /data.
FROM ghcr.io/imetn/calends:1.35.0
LABEL org.opencontainers.image.source="https://github.com/onepush-dev/calends"
ENV NODE_ENV=production \
    PORT=8080 \
    HOST=0.0.0.0 \
    DATA_DIR=/data
EXPOSE 8080
