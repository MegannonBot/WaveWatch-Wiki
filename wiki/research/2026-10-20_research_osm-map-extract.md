---
type: research
title: OpenStreetMap extract of Jeffreys Bay
summary: How the street map data was obtained and what it contains.
status: active
origin: maps.mail.ru Overpass mirror, queried from Franco's Chrome
date_retrieved: 2026-10-20
last_updated: 2026-10-20
---

# OpenStreetMap extract of Jeffreys Bay

## Summary

Extracted on 2026-10-20 for the bounding box 24.84 E to 24.965 E, 34.105 S to 33.975 S. Stored in compact form (roads, coast, water, green, places, points of interest) in `raw/2026-10-20_osm-jeffreys-bay-extract.json`, which is not edited again; the version with a sea polygon is in the artifact source.

## Findings

- 1,900 elements: 1,747 roads (residential 1,023, service 345, track 137, tertiary 93), 8 coastline ways, 73 water and wetland areas, 8 green areas, 10 place names, 6 points of interest including the SAPS station.
- The public Overpass server answered 406; the mail.ru mirror worked. The cloud workspace and the Mac's shell could not reach OpenStreetMap; Chrome could.
- Licence: OpenStreetMap contributors, ODbL. Attribution is shown on the map.

## What it means for us

The web app can use the same extract as GeoJSON. Refresh it before beta.

## Not checked

Completeness of street names in newer areas.
