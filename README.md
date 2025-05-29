<img width="1276" alt="image" src="https://github.com/user-attachments/assets/669586a3-4ffc-4642-aa0d-a48d5019de69" />## Getting Started

To run the kOS scripts, you will need:

1.  **Kerbal Space Program (KSP):** Ensure you have the game installed.
2.  **kOS Mod:** Install the `kOS` mod for KSP. Instructions can usually be found on the kOS GitHub page or SpaceDock.
3.  **Place Scripts:** Copy the `.ks` files (e.g., `orbitPID.ks`, `maneuverFunctions.ks`) into the appropriate `kOS` script directory within your KSP installation (typically `GameData/kOS/Scripts/` or a subdirectory you've configured for kOS programs). The `orbitPID.ks` script expects `maneuverFunctions.ks` to be in a `lib` folder relative to the script's execution path, as indicated by `RUNONCEPATH("0:/lib/maneuverFunctions.ks")`[cite: 148]. You might need to adjust your local kOS setup or folder structure accordingly.

Once set up in KSP:
* Load a rocket in KSP.
* Open the kOS terminal in-game.
* Run the main script (e.g., `RUN orbitPID.ks`).

## Results

The project successfully demonstrated autonomous orbiting of Kerbin. Initial tests used autopilot functions for data extraction, achieving stable orbits at 80 km with zero inclination[cite: 86, 91, 92]. Subsequent development focused on equation-based control using "raw controls" instead of autopilot, which proved challenging but ultimately achieved desired orbits[cite: 7, 96, 101, 102]. The achieved velocity was less than the maximum predicted velocity for the mission (3400 m/s from Delta-V map)[cite: 109, 110, 111].

**Screenshots of successful missions:**
* [Screenshot: Spaceship leaving Kerbin’s atmosphere (from report Figure 7)]([./Users/mac/Desktop/fig9.png]

* [Screenshot: Rocket successfully orbiting Kerbin (from report Figure 9)](./path/to/your/figure9.png) - 


## Future Work

Potential future advancements for this project include:
* Refining the script's functionality and expanding its capabilities to handle more complex tasks, such as planetary landings[cite: 142].
* Investigating alternative mods or tools to enhance adaptability across diverse platforms and environments[cite: 142].
* Integrating the software with other simulation environments beyond KSP for extended testing and validation[cite: 143].
* Extending the script to enable the rocket to transition from a low Kerbin orbit to a different orbit, such as a geostationary orbit, requiring further refinement of algorithms and calculations[cite: 144, 145].



## Supervisor

* Melih Türkseven

## License

This project is licensed under the Apache-2.0 License. See the `LICENSE` file for details.
