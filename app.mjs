//==============================================================================
import config from './config.mjs';
import https from 'https';
import fs from 'fs';
//==============================================================================
const serverOptions = {
  key: fs.readFileSync(config.key),
  cert: fs.readFileSync(config.cert)
};
const requestListener = (request, response) => response.end('https ok');
const message = `HTTPS Server running at https://localhost:${config.port}`;
const server = https.createServer(serverOptions, requestListener);
//==============================================================================
server.listen(config.port, console.log(message));
//==============================================================================