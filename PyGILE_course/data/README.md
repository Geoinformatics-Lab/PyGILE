# Course data

Small files used by the lessons, kept tiny so the course works offline.

## Part A

| File | What it is | Source |
| --- | --- | --- |
| `nepal_peaks.csv` | Nepal's eight peaks above 8,000 m: height, first ascent year, province, approximate summit coordinates (WGS84) | Heights and ascent years are standard published values; coordinates are approximate |
| `practice_rainfall.csv` | Monthly rainfall at six stations | **Made-up practice data.** Station names are labels (Station A–F); values follow a realistic monsoon pattern but are not measurements |
| `practice_landslides.csv` | 40 landslide records: date, district, location, area, trigger | **Made-up practice data.** Real district names, and each point lies inside its district, but the records are invented for exercises |

## Part B

| File | What it is | Source and licence |
| --- | --- | --- |
| `nepal_districts.geojson` | The 77 districts of Nepal: `district`, `district_code`, `province_code` | [geoJSON-Nepal](https://github.com/mesaugat/geoJSON-Nepal) by Saugat Acharya (MIT licence), derived from the OCHA common operational boundaries produced by the Survey Department of Nepal. Simplified to about 300 m so the file stays small; neighbouring districts still share exactly the same borders |
| `nepal_provinces.geojson` | The 7 provinces, made by dissolving the districts above | As above |
| `province_names.csv` | Province code, number and name (a plain table, joined to the maps in Lesson B6) | Official province names |
| `district_headquarters.geojson` | 75 district headquarters (points). There are 75, not 77, because this layer predates the split of Nawalparasi and Rukum | geoJSON-Nepal (MIT licence) |
| `world_countries.geojson` | Countries of the world at 1:110 million scale, for location maps | [Natural Earth](https://www.naturalearthdata.com/) (public domain) |
| `everest_trek.csv` | Eight stops on the Lukla–Everest Base Camp trek with elevation | Approximate coordinates and commonly cited elevations, for teaching |

Spellings follow the source data, which sometimes differ from common usage: for example the boundary layer writes **Chitawan**, while the practice landslide file writes **Chitwan**. Lesson B6 shows how to find and fix such mismatches, a very common problem with real data.

`make_data.py` rebuilds the Part B files from the original sources.
