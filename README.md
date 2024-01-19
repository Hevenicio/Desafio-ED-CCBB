
## The JSON schema corresponding to the sample

The provided JSON represents data related to a restaurant and its operation within a single guest check. The schema can be described as follows:

- curUTC: Current UTC timestamp.
- locRef: Reference to the store identification.
- guestChecks: Array containing details about guest checks, including information such as check ID, check number, opening and closing dates, closing status, financial totals, and details about associated employees.
- taxes: Array containing details about taxes applied to the check.
- detailLines: Array containing details about the check lines, including information about the items ordered.
- menuItem: Object containing details about a menu item.

The JSON schema corresponds to a guest check from a restaurant's ERP system. It includes general information about the check, details about taxes, and a section for each detail line, which could represent various types of items.


The JSON schema can be described as follows:

```bash
  {
    "curUTC": "string",
    "locRef": "string",
    "guestChecks": [
        {
            "guestCheckId": integer,
            "chkNum": integer,
            "opnBusDt": "string",
            "opnUTC": "string",
            "opnLcl": "string",
            "clsdBusDt": "string",
            "clsdUTC": "string",
            "clsdLcl": "string",
            "lastTransUTC": "string",
            "lastTransLcl": "string",
            "lastUpdatedUTC": "string",
            "lastUpdatedLcl": "string",
            "clsdFlag": boolean,
            "subTtl": float,
            "nonTxblSlsTtl": float or null,
            "chkTtl": float,
            "dscTtl": float,
            "payTtl": float,
            "balDueTtl": float or null,
            "rvcNum": integer,
            "otNum": integer,
            "empNum": integer,
            "taxes": [
                {
                    "taxNum": integer,
                    "txblSlsTtl": float,
                    "taxCollTtl": float,
                    "taxRate": float,
                    "type": integer
                }
            ],
            "detailLines": [
                {
                    "guestCheckLineItemId": integer,
                    "dtlOtNum": integer,
                    "lineNum": integer,
                    "dtlId": integer,
                    "detailUTC": "string",
                    "detailLcl": "string",
                    "lastUpdateUTC": "string",
                    "lastUpdateLcl": "string",
                    "busDt": "string",
                    "wsNum": integer,
                    "dspTtl": float,
                    "dspQty": float,
                    "aggTtl": float,
                    "aggQty": float,
                    "chkEmpId": integer,
                    "chkEmpNum": integer,
                    "svcRndNum": integer,
                    "menuItem": {
                        "miNum": integer,
                        "inclTax": float,
                        "activeTaxes": "string",
                        "prcLvl": integer
                    }
                }
            ]
        }
    ]
}

```

## The JSON into SQL tables

Included are three .sql files:

- DESAFIO_TABELAS.sql: Contains the query to create an empty table.
- ENTRADA_JSON_CCBB.sql: Includes the query to populate the previously created empty table using data from the .json file.
- TABELAS_CCBB.sql: Contains the query for necessary filtering and searches.


## The chosen approach

The chosen approach to transcribe JSON data to SQL involved creating a database structure that reflects the various entities present in restaurant data within a single table. This approach aims to ensure efficiency in data retrieval, maintenance, and analysis, considering the complexity of the restaurant chain and the need to deal with multiple assets.
