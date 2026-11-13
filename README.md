# Calends on Railway

Calends — self-hosted subscription & recurring-bill ledger (renewal reminders, multi-currency reports, calendar feeds). Deploy on Railway with one click.

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/PLACEHOLDER)

Upstream: [imetn/calends](https://github.com/imetn/calends) (MIT). This repo only wraps the official image
`ghcr.io/imetn/calends:1.35.0` (app unmodified) as `ghcr.io/onepush-dev/calends:1.35.0`, baking `PORT=8080`,
`HOST=0.0.0.0` and `DATA_DIR=/data`.

## What you get

- One service, `calends`, on port 8080 with a Railway volume at `/data` (the SQLite ledger).
- Healthcheck `GET /healthz` (checks the database).
- `OWNER_PASSCODE` is generated per deploy and is your first password, so nobody can claim a fresh server.
  On your first sign-in Calends stores it as a salted hash; change it any time in Settings (the variable is then no longer used).
- `SETUP_TOKEN` is generated too (only used if the password is ever reset), and `SITE_URL` points at your Railway domain
  so reminder and calendar-feed links are correct.

## First sign-in

Open the service's **Variables** tab, copy `OWNER_PASSCODE`, open your Railway domain and sign in with it.

## Notes

- Keep one replica (single SQLite file on one volume).
- Optional upstream variables: `TRUST_PROXY`, `BASE_PATH`, `NODE_OPTIONS`; see the [self-hosting guide](https://github.com/imetn/calends/blob/main/docs/self-hosting.md).
