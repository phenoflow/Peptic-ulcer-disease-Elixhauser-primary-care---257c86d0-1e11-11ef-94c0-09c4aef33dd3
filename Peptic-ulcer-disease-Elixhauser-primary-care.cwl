cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  peptic-ulcer-disease-elixhauser-primary-care-history---primary:
    run: peptic-ulcer-disease-elixhauser-primary-care-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  chronic-peptic-ulcer-disease-elixhauser-primary-care---primary:
    run: chronic-peptic-ulcer-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-elixhauser-primary-care-history---primary/output
  ulcer---primary:
    run: ulcer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: chronic-peptic-ulcer-disease-elixhauser-primary-care---primary/output
  peptic-ulcer-disease-elixhauser-primary-care-perforation---primary:
    run: peptic-ulcer-disease-elixhauser-primary-care-perforation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ulcer---primary/output
  peptic-ulcer-disease-elixhauser-primary-care-specified---primary:
    run: peptic-ulcer-disease-elixhauser-primary-care-specified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-elixhauser-primary-care-perforation---primary/output
  gastric-peptic-ulcer-disease-elixhauser-primary-care---primary:
    run: gastric-peptic-ulcer-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-elixhauser-primary-care-specified---primary/output
  peptic-ulcer-disease-elixhauser-primary-care-complication---primary:
    run: peptic-ulcer-disease-elixhauser-primary-care-complication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: gastric-peptic-ulcer-disease-elixhauser-primary-care---primary/output
  peptic-ulcer-disease-elixhauser-primary-care-obstruction---primary:
    run: peptic-ulcer-disease-elixhauser-primary-care-obstruction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-elixhauser-primary-care-complication---primary/output
  duodenal-peptic-ulcer-disease-elixhauser-primary-care---primary:
    run: duodenal-peptic-ulcer-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-elixhauser-primary-care-obstruction---primary/output
  peptic-ulcer-disease-elixhauser-primary-care-antiplatelet---primary:
    run: peptic-ulcer-disease-elixhauser-primary-care-antiplatelet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: duodenal-peptic-ulcer-disease-elixhauser-primary-care---primary/output
  gastrojejunal-peptic-ulcer-disease-elixhauser-primary-care---primary:
    run: gastrojejunal-peptic-ulcer-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-elixhauser-primary-care-antiplatelet---primary/output
  peptic-ulcer-disease-elixhauser-primary-care-closure---primary:
    run: peptic-ulcer-disease-elixhauser-primary-care-closure---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: gastrojejunal-peptic-ulcer-disease-elixhauser-primary-care---primary/output
  acute-peptic-ulcer-disease-elixhauser-primary-care---primary:
    run: acute-peptic-ulcer-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-elixhauser-primary-care-closure---primary/output
  peptic-ulcer-disease-elixhauser-primary-care---primary:
    run: peptic-ulcer-disease-elixhauser-primary-care---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: acute-peptic-ulcer-disease-elixhauser-primary-care---primary/output
  peptic-ulcer-disease-elixhauser-primary-care-stomach---primary:
    run: peptic-ulcer-disease-elixhauser-primary-care-stomach---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-elixhauser-primary-care---primary/output
  peptic-ulcer-disease-elixhauser-primary-care-suture---primary:
    run: peptic-ulcer-disease-elixhauser-primary-care-suture---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-elixhauser-primary-care-stomach---primary/output
  peptic-ulcer-disease-elixhauser-primary-care-operation---primary:
    run: peptic-ulcer-disease-elixhauser-primary-care-operation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-elixhauser-primary-care-suture---primary/output
  peptic-ulcer-disease-elixhauser-primary-care-perforated---primary:
    run: peptic-ulcer-disease-elixhauser-primary-care-perforated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-elixhauser-primary-care-operation---primary/output
  peptic-ulcer-disease-elixhauser-primary-care-inflammatory---primary:
    run: peptic-ulcer-disease-elixhauser-primary-care-inflammatory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-elixhauser-primary-care-perforated---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: peptic-ulcer-disease-elixhauser-primary-care-inflammatory---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
