#include <Arduino.h>

#include <WiFi.h>
#include <WiFiClient.h>
#include <WebServer.h>

#include <ElegantOTA.h>

const char *ssid = "........";
const char *password = "........";

#if defined(ESP8266)
ESP8266WebServer server(80);
#elif defined(ESP32)
WebServer server(80);
#endif

void setup(void)
{
  Serial.begin(115200);
  WiFi.mode(WIFI_STA);
  WiFi.begin(ssid, password);
  Serial.println("");

  // Wait for connection
  while (WiFi.status() != WL_CONNECTED)
  {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());

  server.on("/", []()
            { server.send(200, "THC FW_1.0"); });

  ElegantOTA.begin(&server); // Start ElegantOTA
  server.begin();
  Serial.println("HTTP server started");
}

void loop(void)
{
  server.handleClient();
}