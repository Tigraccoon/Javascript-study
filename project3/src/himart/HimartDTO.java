package himart;

public class HimartDTO {
	private String location;
	private String name;
	private String code;
	private int price;
	private int amount;
	private int val;
	private int tax;
	private int tot;
	private String chk;
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getVal() {
		return val;
	}
	public void setVal(int val) {
		this.val = val;
	}
	public int getTax() {
		return tax;
	}
	public void setTax(int tax) {
		this.tax = tax;
	}
	public int getTot() {
		return tot;
	}
	public void setTot(int tot) {
		this.tot = tot;
	}
	public String getChk() {
		return chk;
	}
	public void setChk(String chk) {
		this.chk = chk;
	}
	@Override
	public String toString() {
		return "HimartDTO [location=" + location + ", name=" + name + ", code=" + code + ", price=" + price
				+ ", amount=" + amount + ", val=" + val + ", tax=" + tax + ", tot=" + tot + ", chk=" + chk + "]";
	}
	public HimartDTO(String location, String name, String code, int price, int amount, int val, int tax, int tot,
			String chk) {
		this.location = location;
		this.name = name;
		this.code = code;
		this.price = price;
		this.amount = amount;
		this.val = val;
		this.tax = tax;
		this.tot = tot;
		this.chk = chk;
	}
	public HimartDTO() {
	}
	
	
	
	
	
}
