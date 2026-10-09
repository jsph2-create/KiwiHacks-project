extends ProgressBar

func _ready() -> void:
	# Now using .max_fuel and .fuel!
	max_value = FuelBar.max_fuel
	value = FuelBar.fuel
	
	# Connect to the new fuel signal
	FuelBar.fuel_changed.connect(_on_fuel_changed)

func _on_fuel_changed(new_fuel: float) -> void:
	value = new_fuel
