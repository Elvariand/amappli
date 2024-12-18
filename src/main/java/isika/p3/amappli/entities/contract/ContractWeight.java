package isika.p3.amappli.entities.contract;

public enum ContractWeight {

	SMALL("Petit"), AVERAGE("Moyen"), BIG("Grand");

	private final String displayName;

	ContractWeight(String displayName) {
		this.displayName = displayName;
	}

	public String getDisplayName() {
		return displayName;
	}
}
