/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shakepoint.web.core.repository;


import com.shakepoint.web.data.dto.plc.PlcProduct;
import com.shakepoint.web.data.dto.res.MachineDTO;
import com.shakepoint.web.data.dto.res.MachineProduct;
import com.shakepoint.web.data.dto.res.TechnicianMachine;
import com.shakepoint.web.data.entity.Machine;
import com.shakepoint.web.data.entity.MachineProductModel;
import com.shakepoint.web.data.entity.Product;

import java.util.List;

/**
 *
 * @author Alberto Rubalcaba
 */
public interface MachineRepository {
	public void updateMachineProductLevel(String machineId, String productId, int level); 
	public boolean containProduct(String machineId, String productId); 
    public String addMachine(Machine machine);
    public List<MachineDTO> getMachines(int pageNumber);
    public boolean machineExists(String machineId);
    public MachineDTO getMachine(String machineId);
    public int getAlertedproducts(String machineId); 
    public List<MachineProduct> getMachineProducts(String machineId, int pageNumber);
    public void addTechnicianMachine(String technicianId, String machineId);
    public void deleteTechnicianMachine(String machineId);
    public void addMachineProduct(MachineProductModel mp);
    public MachineProduct getMachineProduct(String id);
    public void deleteMachineProduct(String id);
    public List<MachineDTO> getTechnicianAsignedMachines(String technicianId, int pageNumber);
    public List<MachineDTO> getAlertedMachines(String technicianId, int pageNumber);
    public List<MachineDTO> getFailedMachines(String technicianId, int pageNumber);
    public int getActiveMachines(); 
    public int getAlertedMachines();
    public int getAlertedMachines(String technicianId);
    public List<TechnicianMachine> getTechnicianMachines(String id, int pageNumber);
    public List<MachineDTO> searchMachine(String queryString, int pageNumber);
    public void updateMachineStatus(Machine.Status status, String machineId);
    public List<PlcProduct> getMachineProducts(String machineId);
    public Machine getMachineEntity(String machineId); 
    public String getTechnicianId(String machineId); 
}
