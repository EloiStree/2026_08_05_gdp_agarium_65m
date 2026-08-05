
```
git submodule add https://github.com/EloiStree/2026_08_05_gdp_agarium_65m.git addons/2026_08_05_gdp_agarium_65m
```

```
git clone https://github.com/EloiStree/2026_08_05_gdp_agarium_65m.git addons/2026_08_05_gdp_agarium_65m
```


# 2026_08_05_gdp_agarium_65m

> Learn to play an Agar.io-like game with Godot GDScript

In the context of CodeLab TV, XR, and Cinema, an Agar.io-style game would be a good project to run 24/7 for learning to code or organizing coding tournaments.

* **CodeLab TV:** You train alone.
* **CodeLab Cinema:** You play on a multiplayer server.
* **CodeLab XR:** You can view the multiplayer server and move your blob.

# Why 65m ?

If you want to make a game with millimeter precision on the server—for example, a drone game—you need to consider the limits of your coordinate format.

With a **32-bit float (`float32`)**, you have about **7 significant decimal digits** of precision. This means you can maintain **1 mm precision** up to approximately **16.7 km** from the origin. Beyond that, coordinates begin to lose millimeter accuracy.

If you use a **`ushort`** instead, you reduce the bandwidth required to transmit coordinates by half compared to a 32-bit value, which can help support more players over the network. A `ushort` stores values from **0 to 65,535 mm**, giving you an exact range of **65.535 meters**.

A 65-meter area is sufficient for games like Agar.io, where the gameplay is concentrated in a relatively small arena with many players.




