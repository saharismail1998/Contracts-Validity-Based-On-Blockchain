// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract addContract {
    struct ContractOfSellLand {
        string city;
        uint256 cost;
        uint256 taxCcearNumber;
        string moblieNumber;
        bool verificationStatus;
    }

    struct landBuyer {
        uint256 idNumberBuyer;
        string firstNameBuyer;
        string fatherNameBuyer;
        string grandfatherBuyer;
        string lastNameBuyer;
        string relation;
        bool verificationStatus;
    }

    struct landSeller {
        uint256 idNumberSeller;
        string firstNameSeller;
        string fatherNameSeller;
        string grandfatherSeller;
        string lastNameSeller;
        string relation;
        bool verificationStatus;
    }

    struct contentContract {
        uint256 Piece;
        uint256 coupon;
        uint256 area;
        string note;
        bool verificationStatus;
    }

    struct attachedDocument {
        string inventoryOfTheLagacyHash;
        string taxFreeCertificateHash;
        string idPhotoHash;
        string enteryExtractHash;
        string agenciesHash;
        bool verificationStatus;
    }

    struct finalContract {
        uint256 orderNumber;
        uint256 transactionNumber;
        uint256 idNumberBuyer;
        string fullNameBuyer;
        uint256 idNumberSeller;
        string fullNameSeller;
        string clerks;
        string orderDate;
        string moblieNumberReviwer;
        bool verificationStatus;
    }

    mapping(uint256 => ContractOfSellLand) public ContractOfSellLands;
    mapping(uint256 => attachedDocument) public attachedDocuments;
    mapping(uint256 => contentContract) public contentContracts;
    mapping(uint256 => finalContract) public finalContracts;
    mapping(uint256 => landBuyer) public landBuyers;
    mapping(uint256 => landSeller) public landSellers;

    ContractOfSellLand[] public lands;

    function addContractOfSellLand(
        uint256 cost,
        string memory city,
        string memory moblieNumber,
        uint256 taxCcearNumber
    ) public {
        ContractOfSellLand memory addLand =
            ContractOfSellLand({
                cost: cost,
                city: city,
                moblieNumber: moblieNumber,
                taxCcearNumber: taxCcearNumber,
                verificationStatus: false
            });
        lands.push(addLand);
    }

    landBuyer[] public buyer;

    function addlandBuyer(
        uint256 idNumberBuyer,
        string memory firstNameBuyer,
        string memory fatherNameBuyer,
        string memory grandfatherBuyer,
        string memory lastNameBuyer,
        string memory relation
    ) public {
        landBuyer memory addBuyer =
            landBuyer({
                idNumberBuyer: idNumberBuyer,
                firstNameBuyer: firstNameBuyer,
                fatherNameBuyer: fatherNameBuyer,
                grandfatherBuyer: grandfatherBuyer,
                lastNameBuyer: lastNameBuyer,
                relation: relation,
                verificationStatus: false
            });
        buyer.push(addBuyer);
    }

    landSeller[] public seller;

    function addlandSeller(
        uint256 idNumberSeller,
        string memory firstNameSeller,
        string memory fatherNameSeller,
        string memory grandfatherSeller,
        string memory lastNameSeller,
        string memory relation
    ) public {
        landSeller memory addSeller =
            landSeller({
                idNumberSeller: idNumberSeller,
                firstNameSeller: firstNameSeller,
                fatherNameSeller: fatherNameSeller,
                grandfatherSeller: grandfatherSeller,
                lastNameSeller: lastNameSeller,
                relation: relation,
                verificationStatus: false
            });
        seller.push(addSeller);
    }

    contentContract[] public contracts;

    function addContentContract(
        uint256,
        uint256,
        uint256,
        string memory
    ) public {
        contentContract memory addcontentContract =
            contentContract({
                Piece: Piece,
                coupon: coupon,
                area: area,
                note: note,
                verificationStatus: false
            });
        contracts.push(addcontentContract);
    }

    attachedDocument[] public documents;

    function addAttachedDocument(
        string memory inventoryOfTheLagacyHash,
        string memory taxFreeCertificateHash,
        string memory idPhotoHash,
        string memory enteryExtractHash,
        string memory agenciesHash
    ) public {
        attachedDocument memory addattachedDocuments =
            attachedDocument({
                inventoryOfTheLagacyHash: inventoryOfTheLagacyHash,
                taxFreeCertificateHash: taxFreeCertificateHash,
                idPhotoHash: idPhotoHash,
                enteryExtractHash: enteryExtractHash,
                agenciesHash: agenciesHash,
                verificationStatus: false
            });
        documents.push(addattachedDocuments);
    }

    finalContract[] public fcontracts;

    function addAFinalContract(
        uint256 orderNumber,
        uint256 transactionNumber,
        uint256 idNumberBuyer,
        string memory fullNameBuyer,
        uint256 idNumberSeller,
        string memory fullNameSeller,
        string memory clerks,
        string memory orderDate,
        string memory moblieNumberReviwer
    ) public {
        finalContract memory addfinalContracts =
            finalContract({
                orderNumber: orderNumber,
                transactionNumber: transactionNumber,
                idNumberBuyer: idNumberBuyer,
                fullNameBuyer: fullNameBuyer,
                idNumberSeller: idNumberSeller,
                fullNameSeller: fullNameSeller,
                clerks: clerks,
                orderDate: orderDate,
                moblieNumberReviwer: moblieNumberReviwer,
                verificationStatus: false
            });
        fcontracts.push(addfinalContracts);
    }

    //to view details of landBuyers for the Buyer
    function landInfoBuyer(uint256 idNumberSeller)
        public
        view
        returns (
            string memory,
            string memory,
            string memory,
            string memory,
            string memory
        )
    {
        return (
            landBuyers[idNumberSeller].firstNameBuyer,
            landBuyers[idNumberSeller].fatherNameBuyer,
            landBuyers[idNumberSeller].grandfatherBuyer,
            landBuyers[idNumberSeller].lastNameBuyer,
            landBuyers[idNumberSeller].relation
        );
    }

    //to view details of landBuyers for the Seller
    function landInfoSeller(uint256 idNumberBuyer)
        public
        view
        returns (
            string memory,
            string memory,
            string memory,
            string memory,
            string memory
        )
    {
        return (
            landSellers[idNumberBuyer].firstNameSeller,
            landSellers[idNumberBuyer].fatherNameSeller,
            landSellers[idNumberBuyer].grandfatherSeller,
            landSellers[idNumberBuyer].lastNameSeller,
            landSellers[idNumberBuyer].relation
        );
    }
}
