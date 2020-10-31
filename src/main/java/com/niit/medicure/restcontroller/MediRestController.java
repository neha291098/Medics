package com.niit.medicure.restcontroller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.niit.medicure.exception.ResourceNotFoundException;
import com.niit.medicure.model.Doctor;
import com.niit.medicure.model.Patient;
import com.niit.medicure.repository.DoctorRepository;
import com.niit.medicure.repository.PatientRepository;

@CrossOrigin(origins="http://localhost:4200")
@RestController
@RequestMapping(value="/api")
public class MediRestController {

@Autowired
public DoctorRepository arepo;
@Autowired
public PatientRepository prepo;

@PostMapping("/admin")
public Doctor saveProduct(@Valid @RequestBody Doctor doctor) {  
return arepo.save(doctor)  ;
             
}  
@GetMapping("/admin/doctor")  
    public List<Doctor> getAllDoctors() {  
         return arepo.findAll();    
    }  
@DeleteMapping("/admin/{id}")
public Map<String, Boolean> deleteDoctor(@PathVariable(value = "id") int dId)
throws ResourceNotFoundException{
Doctor doctor = arepo.findById(dId)
.orElseThrow(() -> new ResourceNotFoundException("Doctor not found for this id :: " + dId));
    arepo.delete(doctor);
   
    Map<String, Boolean> response = new HashMap<>();
response.put("deleted", Boolean.TRUE);
return response;
}
@GetMapping("/admin/patient")  
    public List<Patient> getAllPatient() {  
         return prepo.findAll();    
    }  
@DeleteMapping("/admin/patient/{patientid}")
public Map<String, Boolean> deletePatient(@PathVariable(value = "patientid") int pId)
throws ResourceNotFoundException{
Patient patient = prepo.findById(pId)
.orElseThrow(() -> new ResourceNotFoundException("Patient not found for this id :: " + pId));
    prepo.delete(patient);
   
    Map<String, Boolean> response = new HashMap<>();
response.put("deleted", Boolean.TRUE);
return response;
}

}


