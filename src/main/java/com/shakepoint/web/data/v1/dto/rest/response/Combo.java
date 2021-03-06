package com.shakepoint.web.data.v1.dto.rest.response;

import com.shakepoint.web.data.v1.entity.Product;

import java.util.ArrayList;
import java.util.List;

public class Combo extends Product {

	private String id;
	protected String name;
	protected String logoUrl;
	protected double price;
	protected String creationDate;
	protected String description;
	private List<Product> items;
	
	public Combo() {
		super();
		items = new ArrayList<Product>();
	}

	@Override
	public String getId() {
		return id;
	}

	@Override
	public void setId(String id) {
		this.id = id;
	}

	@Override
	public String getName() {
		return name;
	}

	@Override
	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String getLogoUrl() {
		return logoUrl;
	}

	@Override
	public void setLogoUrl(String logoUrl) {
		this.logoUrl = logoUrl;
	}

	@Override
	public double getPrice() {
		return price;
	}

	@Override
	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public String getCreationDate() {
		return creationDate;
	}

	@Override
	public void setCreationDate(String creationDate) {
		this.creationDate = creationDate;
	}

	@Override
	public String getDescription() {
		return description;
	}

	@Override
	public void setDescription(String description) {
		this.description = description;
	}

	public List<Product> getItems() {
		return items;
	}

	public void setItems(List<Product> items) {
		this.items = items;
	}
}
