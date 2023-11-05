package hotel.bean;

import java.sql.Timestamp;

public class HOrderDTO {
	private int renum;
	private String id;
	private int ref;
	private String checkin;
	private String checkout;
	private int adult;
	private int kid;
	private int state;
	private Timestamp reg;
	private String paytype;
	private int adultcount;
	private int kidcount;
	private String name;
	private int price;
	private int paid;
	private String roomtype;
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getRef() {
		return ref;
	}
	public void setRef(int ref) {
		this.ref = ref;
	}
	public int getAdultcount() {
		return adultcount;
	}
	public void setAdultcount(int adultcount) {
		this.adultcount = adultcount;
	}
	public int getKidcount() {
		return kidcount;
	}
	public void setKidcount(int kidcount) {
		this.kidcount = kidcount;
	}
	public int getAdultCount() {
		return adultcount;
	}
	public void setAdultCount(int adultCount) {
		this.adultcount = adultcount;
	}
	public int getKidCount() {
		return kidcount;
	}
	public void setKidCount(int kidCount) {
		this.kidcount = kidcount;
	}
	public int getRenum() {
		return renum;
	}
	public void setRenum(int renum) {
		this.renum = renum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	public int getAdult() {
		return adult;
	}
	public void setAdult(int adult) {
		this.adult = adult;
	}
	public int getKid() {
		return kid;
	}
	public void setKid(int kid) {
		this.kid = kid;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Timestamp getReg() {
		return reg;
	}
	public void setReg(Timestamp reg) {
		this.reg = reg;
	}
	public String getPaytype() {
		return paytype;
	}
	public void setPaytype(String paytype) {
		this.paytype = paytype;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getPaid() {
		return paid;
	}
	public void setPaid(int paid) {
		this.paid = paid;
	}
	public String getRoomtype() {
		return roomtype;
	}
	public void setRoomtype(String roomtype) {
		this.roomtype = roomtype;
	}



}
