/**
 * Central API URL utility.
 *
 * In production (deployed on Render), frontend and backend share the same
 * domain, so all API calls use relative paths (no host needed).
 *
 * In development (localhost), the backend runs on a different port (5000),
 * so we use the full URL from the env variable or fall back to localhost:5000.
 */

const isLocalhost =
  window.location.hostname === "localhost" ||
  window.location.hostname === "127.0.0.1";

export const BACKEND_URL = isLocalhost
  ? (process.env.REACT_APP_BACKEND_URL || "http://localhost:5000").replace(/\/$/, "")
  : ""; // empty string → relative paths → same domain in production
