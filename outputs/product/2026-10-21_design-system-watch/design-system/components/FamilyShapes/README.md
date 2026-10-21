# FamilyShapes

One shape and colour per incident family, used on the map, the watch strip, lists and legends.

| Family | Shape | Token |
| --- | --- | --- |
| Break-ins | square | `family-breakin` |
| Suspicious and LPR | circle | `family-suspicious` |
| Vehicle crime | triangle | `family-vehicle` |
| Robbery and assault | diamond | `family-violent` |
| Theft and damage | hexagon | `family-property` |
| Road safety | wide bar, 2:1 | `family-road` |
| Emergencies | plus | `family-emergency` |
| Drug-related and other | pentagon | `family-other` |

- Draw at 12 to 16px on the map, 9 to 12px in lists and the strip. Always with the family name in words nearby or in the legend.
- Every colour is 4.5:1 or more against `map-land`, `map-sea`, `surface` and `bg` in both themes.
- The newest incident gets a ring in its family colour. Clusters are `ink` discs with the count in `bg`.
