-- Filtrando os dados da tabela CCBB

--select * from ccbb;

select 
	-- curUTC
	(erp ->> 'curUTC')::TEXT as curUTC,
	-- locRef
	(erp ->> 'locRef')::TEXT as locRef,
    -- GuestChecks
    ((erp->'guestChecks')->0->>'guestCheckId')::BIGINT as guestCheckId,
    ((erp->'guestChecks')->0->>'chkNum')::INT as chkNum,
    ((erp->'guestChecks')->0->>'opnBusDt')::DATE as opnBusDt,
    ((erp->'guestChecks')->0->>'opnUTC')::TIMESTAMP as opnUTC,
    ((erp->'guestChecks')->0->>'opnLcl')::TIMESTAMP as opnLcl,
    ((erp->'guestChecks')->0->>'clsdBusDt')::DATE as clsdBusDt,
    ((erp->'guestChecks')->0->>'clsdUTC')::TIMESTAMP as clsdUTC,
    ((erp->'guestChecks')->0->>'clsdLcl')::TIMESTAMP as clsdLcl,
    ((erp->'guestChecks')->0->>'lastTransUTC')::TIMESTAMP as lastTransUTC,
    ((erp->'guestChecks')->0->>'lastTransLcl')::TIMESTAMP as lastTransLcl,
    ((erp->'guestChecks')->0->>'lastUpdatedUTC')::TIMESTAMP as lastUpdatedUTC,
    ((erp->'guestChecks')->0->>'lastUpdatedLcl')::TIMESTAMP as lastUpdatedLcl,
    ((erp->'guestChecks')->0->>'clsdFlag')::BOOLEAN as clsdFlag,
    ((erp->'guestChecks')->0->>'subTtl')::NUMERIC as subTtl,
    ((erp->'guestChecks')->0->>'nonTxblSlsTtl')::NUMERIC as nonTxblSlsTtl,
    ((erp->'guestChecks')->0->>'chkTtl')::NUMERIC as chkTtl,
    ((erp->'guestChecks')->0->>'dscTtl')::NUMERIC as dscTtl,
    ((erp->'guestChecks')->0->>'payTtl')::NUMERIC as payTtl,
    ((erp->'guestChecks')->0->>'balDueTtl')::NUMERIC as balDueTtl,
    ((erp->'guestChecks')->0->>'rvcNum')::INT as rvcNum,
    ((erp->'guestChecks')->0->>'otNum')::INT as otNum,
    ((erp->'guestChecks')->0->>'empNum')::INT as empNum,

    -- Taxes
    ((erp->'guestChecks')->0->'taxes'->0->>'taxNum')::INT as taxNum,
    -- ((erp->'guestChecks')->0->'taxes'->0->>'guestCheckId')::BIGINT as taxGuestCheckId,
    ((erp->'guestChecks')->0->'taxes'->0->>'txblSlsTtl')::NUMERIC as txblSlsTtl,
    ((erp->'guestChecks')->0->'taxes'->0->>'taxCollTtl')::NUMERIC as taxCollTtl,
    ((erp->'guestChecks')->0->'taxes'->0->>'taxRate')::NUMERIC as taxRate,
    ((erp->'guestChecks')->0->'taxes'->0->>'type')::INT as taxType,

    -- DetailLines
    ((erp->'guestChecks')->0->'detailLines'->0->>'guestCheckLineItemId')::BIGINT as guestCheckLineItemId,
    -- ((erp->'guestChecks')->0->'detailLines'->0->>'guestCheckId')::BIGINT as detailLineItemGuestCheckId,
    ((erp->'guestChecks')->0->'detailLines'->0->>'dtlOtNum')::INT as dtlOtNum,
    ((erp->'guestChecks')->0->'detailLines'->0->>'lineNum')::INT as lineNum,
    ((erp->'guestChecks')->0->'detailLines'->0->>'dtlId')::INT as dtlId,
    ((erp->'guestChecks')->0->'detailLines'->0->>'detailUTC')::TIMESTAMP as detailUTC,
    ((erp->'guestChecks')->0->'detailLines'->0->>'detailLcl')::TIMESTAMP as detailLcl,
    ((erp->'guestChecks')->0->'detailLines'->0->>'lastUpdateUTC')::TIMESTAMP as lastUpdateUTC,
    ((erp->'guestChecks')->0->'detailLines'->0->>'lastUpdateLcl')::TIMESTAMP as lastUpdateLcl,
    ((erp->'guestChecks')->0->'detailLines'->0->>'busDt')::DATE as busDt,
    ((erp->'guestChecks')->0->'detailLines'->0->>'wsNum')::INT as wsNum,
    ((erp->'guestChecks')->0->'detailLines'->0->>'dspTtl')::NUMERIC as dspTtl,
    ((erp->'guestChecks')->0->'detailLines'->0->>'dspQty')::INT as dspQty,
    ((erp->'guestChecks')->0->'detailLines'->0->>'aggTtl')::NUMERIC as aggTtl,
    ((erp->'guestChecks')->0->'detailLines'->0->>'aggQty')::INT as aggQty,
    ((erp->'guestChecks')->0->'detailLines'->0->>'chkEmpId')::INT as chkEmpId,
    ((erp->'guestChecks')->0->'detailLines'->0->>'chkEmpNum')::INT as chkEmpNum,
    ((erp->'guestChecks')->0->'detailLines'->0->>'svcRndNum')::INT as svcRndNum,

    -- MenuItems
    ((erp->'guestChecks')->0->'detailLines'->0->'menuItem'->>'miNum')::INT as miNum,
    -- ((erp->'guestChecks')->0->'detailLines'->0->>'guestCheckLineItemId')::BIGINT as menuItemGuestCheckLineItemId,
    ((erp->'guestChecks')->0->'detailLines'->0->'menuItem'->>'inclTax')::NUMERIC as inclTax,
    ((erp->'guestChecks')->0->'detailLines'->0->'menuItem'->>'activeTaxes')::VARCHAR(255) as activeTaxes,
    ((erp->'guestChecks')->0->'detailLines'->0->'menuItem'->>'prcLvl')::INT as prcLvl
from ccbb;