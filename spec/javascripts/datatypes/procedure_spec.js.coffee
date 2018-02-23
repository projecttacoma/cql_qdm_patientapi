describe "Procedure", ->
  describe "Order", ->
    it "should return anatomicalLocationSite", ->
      procedureOrder = new CQL_QDM.ProcedureOrder({anatomical_location: {code_system: "SNOMED-CT", code: "24028007", title: "Right"}})
      expect(procedureOrder.anatomicalLocationSite()).toEqual(new cql.Code("24028007", "SNOMED-CT"))

  describe "Performed", ->
    it "should show null relevantPeriod", ->
      procedurePerformed = new CQL_QDM.ProcedurePerformed({})
      expect(procedurePerformed.relevantPeriod()).toBeNull()

    it "should show valid relevantPeriod", ->
      procedurePerformed = new CQL_QDM.ProcedurePerformed({'start_time': '08/31/2017 1:00 AM', 'end_time': '08/31/2017 2:00 AM'})
      expect(JSON.stringify(procedurePerformed.relevantPeriod())).toEqual '{"low":"2017-08-31T01:00:00.00+0000","high":"2017-08-31T02:00:00.00+0000","lowClosed":true,"highClosed":true}'

    it "should return anatomicalLocationSite", ->
      procedurePerformed = new CQL_QDM.ProcedurePerformed({anatomical_location: {code_system: "SNOMED-CT", code: "24028007", title: "Right"}})
      expect(procedurePerformed.anatomicalLocationSite()).toEqual(new cql.Code("24028007", "SNOMED-CT"))

  describe "Recommended", ->
    it "should return anatomicalLocationSite", ->
      procedureRecommended = new CQL_QDM.ProcedureRecommended({anatomical_location: {code_system: "SNOMED-CT", code: "24028007", title: "Right"}})
      expect(procedureRecommended.anatomicalLocationSite()).toEqual(new cql.Code("24028007", "SNOMED-CT"))