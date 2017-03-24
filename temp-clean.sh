#!/bin/bash

rm -rf advanced/frontend/runtime/mail/*
echo "runtime/mail/* files deleted.";

rm -rf advanced/backend/runtime/mail/*
echo "backends runtime/mail/* files deleted.";

rm -rf advanced/web/assets/*
echo "www/assets/* files deleted.";

rm -rf advanced/web/adm/assets/*
echo "www/assets/* files deleted.";

rm -rf advanced/frontend/runtime/debug/mail/*.eml
echo "frontend/runtime/debug/mail/*.eml files deleted.";

rm -rf advanced/backend/runtime/debug/mail/*.eml
echo "backend/runtime/debug/mail/*.eml files deleted.";

> advanced/backend/runtime/logs/app.log
echo "app.log cleaned.";

> advanced/frontend/runtime/logs/app.log
echo "frontend app.log cleaned.";

