-- Inserção de dados do arquivo .json na tabela CCBB

INSERT INTO ccbb(erp) 
VALUES('{"curUTC": "2024-01-08T20:08:43",
    "locRef": "store id",
    "guestChecks": [
        {
            "guestCheckId": 915266015,
            "chkNum": 9485,
            "opnBusDt": "2023-12-10",
            "opnUTC": "2023-12-10T13:12:52",
            "opnLcl": "2023-12-10T10:12:52",
            "clsdBusDt": "2023-12-10",
            "clsdUTC": "2023-12-10T13:44:44",
            "clsdLcl": "2023-12-10T10:44:44",
            "lastTransUTC": "2023-12-10T13:44:53",
            "lastTransLcl": "2023-12-10T10:44:53",
            "lastUpdatedUTC": "2023-12-10T13:45:03",
            "lastUpdatedLcl": "2023-12-10T10:45:03",
            "clsdFlag": true,
            "subTtl": 313.9,
            "nonTxblSlsTtl": null,
            "chkTtl": 313.9,
            "dscTtl": 0,
            "payTtl": 313.9,
            "balDueTtl": null,
            "rvcNum": 110,
            "otNum": 5,
            "empNum": 653007,
            "taxes": [
                {
                    "taxNum": 5,
                    "txblSlsTtl": 292,
                    "taxCollTtl": 31.29,
                    "taxRate": 12,
                    "type": 3
                }
            ],
            "detailLines": [
                {
                    "guestCheckLineItemId": 5930161458,
                    "dtlOtNum": 5,
                    "lineNum": 1,
                    "dtlId": 1,
                    "detailUTC": "2023-12-10T13:12:57",
                    "detailLcl": "2023-12-10T10:12:57",
                    "lastUpdateUTC": "2023-12-10T13:45:03",
                    "lastUpdateLcl": "2023-12-10T10:45:03",
                    "busDt": "2023-12-10",
                    "wsNum": 99,
                    "dspTtl": 292,
                    "dspQty": 1,
                    "aggTtl": 292,
                    "aggQty": 1,
                    "chkEmpId": 7755979,
                    "chkEmpNum": 653207,
                    "svcRndNum": 1,
                    "menuItem": {
                        "miNum": 7021,
                        "inclTax": 31.285714,
                        "activeTaxes": "5",
                        "prcLvl": 8
                    }
                }
            ]
        }
    ]
}')