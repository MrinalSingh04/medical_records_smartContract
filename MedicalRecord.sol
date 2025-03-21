// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract MedicalRecords {
    struct Patient {
        string name;
        uint256 age;
        address[] approvedDoctors;
        mapping(address => string) medicalHistory;
    }

    mapping(address => Patient) private patients;
    mapping(address => bool) public registeredDoctors;
    
    event DoctorRegistered(address doctor);
    event RecordUpdated(address patient, address doctor);
    
    modifier onlyPatient() {
        require(bytes(patients[msg.sender].name).length > 0, "Not a registered patient");
        _;
    }
    
    modifier onlyDoctor() {
        require(registeredDoctors[msg.sender], "Not a registered doctor");
        _;
    }
    
    function registerPatient(string memory _name, uint256 _age) public {
        require(bytes(patients[msg.sender].name).length == 0, "Already registered");
        patients[msg.sender].name = _name;
        patients[msg.sender].age = _age;
    }

    function registerDoctor() public {
        registeredDoctors[msg.sender] = true;
        emit DoctorRegistered(msg.sender);
    }

    function grantAccessToDoctor(address _doctor) public onlyPatient {
        patients[msg.sender].approvedDoctors.push(_doctor);
    }

    function updateMedicalRecord(address _patient, string memory _record) public onlyDoctor {
        require(isDoctorApproved(_patient, msg.sender), "Doctor not approved");
        patients[_patient].medicalHistory[msg.sender] = _record;
        emit RecordUpdated(_patient, msg.sender);
    }

    function getMedicalRecord(address _doctor) public view onlyPatient returns (string memory) {
        return patients[msg.sender].medicalHistory[_doctor];
    }

    function isDoctorApproved(address _patient, address _doctor) internal view returns (bool) {
        address[] memory approved = patients[_patient].approvedDoctors;
        for (uint256 i = 0; i < approved.length; i++) {
            if (approved[i] == _doctor) {
                return true;
            }
        }
        return false;
    }
}
