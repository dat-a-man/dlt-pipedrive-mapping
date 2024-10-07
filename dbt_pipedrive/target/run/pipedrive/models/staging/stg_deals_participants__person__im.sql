
  
    

    create or replace table `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_deals_participants__person__im`
      
    
    

    OPTIONS()
    as (
      /* Table: deals_participants__person__im */
/* Parent: { parent }} */


-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`dlt_active_load_ids`
-- depends_on: `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_deals_participants`

SELECT
/* select which columns will be available for table 'deals_participants__person__im' */
    value,
    primary,
    _dlt_root_id,
    _dlt_parent_id,
    _dlt_list_idx,
    _dlt_id,
FROM `dlthub-sandbox`.`pipedrive_data`.`deals_participants__person__im`

/* we only load table items if the parent table has the parent item */
WHERE _dlt_parent_id IN ( SELECT _dlt_id FROM `dlthub-sandbox`.`pipedrive_data_transformed`.`stg_deals_participants` )
    );
  