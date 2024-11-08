SELECT * FROM create_graph('who_factsheets_part1of4');
SELECT * FROM cypher('who_factsheets_part1of4', $$
	CREATE (:CodexAlimentariusCommission)-[:SETS]->(:InternationalFoodStandards)
	CREATE (:CropYieldImprovement)-[:CONTRIBUTES_TO]->(:FoodSecurity)
	CREATE (:DietaryGuideline {type: 'Dietary Guidelines'})-[:PROVIDES_RECOMMENDATIONS_ON]->(:PhysicalActivity {type: 'Physical Activity'})
	CREATE (:Disease {type: 'Breast Cancer'})-[:IS_SUBTYPE_OF]->(:Disease {type: 'Cancer'})
	CREATE (:Disease {type: 'Cancer'})-[:IS_TOPIC_OF]->(:Document {type: 'Fact Sheets'})
	CREATE (:Disease {type: 'Colorectal Cancer'})-[:IS_SUBTYPE_OF]->(:Disease {type: 'Cancer'})
	CREATE (:Disease {type: 'Lung Cancer'})-[:IS_SUBTYPE_OF]->(:Disease {type: 'Cancer'})
	CREATE (:FarmWorkers {type: 'Farm Workers'})-[:EXPOSED_TO]->(:PesticideExposure {type: 'Pesticide Exposure'})
	CREATE (:FieldOfStudy {type: 'Gerontology'})-[:IS_CONCERN_OF]->(:Organization {type: 'World Health Organization'})
	CREATE (:FieldOfStudy {type: 'Healthcare Policy'})-[:GOVERNS]->(:Organization {type: 'World Health Organization'})
	CREATE (:FieldOfStudy {type: 'Nutrition'})-[:CONTRIBUTES_TO]->(:FieldOfStudy {type: 'Cancer Prevention'})
	CREATE (:FoodSecurity)-[:KEEPS_PACE_WITH]->(:GlobalPopulationGrowth)
	CREATE (:GlobalHealthInitiative {type: 'Global Health Initiative'})-[:PROMOTES]->(:PhysicalActivity {type: 'Physical Activity'})
	CREATE (:GlobalPhysicalActivityGuidelines {type: 'Global Physical Activity Guidelines'})-[:PROVIDES]->(:AgeSpecificRecommendations {type: 'Age-Specific Recommendations'})
	CREATE (:GlobalPopulationGrowth)-[:OCCURS_IN]->(:LowAndMiddleIncomeCountries)
	CREATE (:InternationalCodeOfConductOnPesticideManagement)-[:GUIDES]->(:IntegratedPestManagement)
	CREATE (:JointFAOWHOMeetingOnPesticideResidues)-[:ESTABLISHES]->(:MaximumResidueLimits)
	CREATE (:ModerateIntensityExercise {type: 'Moderate-Intensity Exercise'})-[:COMPLEMENTS]->(:VigorousIntensityExercise {type: 'Vigorous-Intensity Exercise'})
	CREATE (:Organization {type: 'European Society Fo rMedical Oncology'})-[:PROVIDES]->(:Document {type: 'Oncology Guidelines'})
	CREATE (:Organization {type: 'World Health Organization'})-[:OPERATES_IN]->(:GeographicRegion {type: 'Geographic Regions'})
	CREATE (:Organization {type: 'World Health Organization'})-[:PUBLISHES]->(:Document {type: 'Fact Sheets'})
	CREATE (:PesticideExposure)-[:AFFECTS]->(:HumanHealthRisks)
	CREATE (:PesticideResidues {type: 'Pesticide Residues'})-[:CONTRIBUTES_TO]->(:FoodSecurity {type: 'Food Security'})
	CREATE (:PesticideResidues {type: 'Pesticide Residues'})-[:KILLS]->(:FungalControl {type: 'Fungal Control'})
	CREATE (:PesticideResidues {type: 'Pesticide Residues'})-[:KILLS]->(:PestControl {type: 'Pest Control'})
	CREATE (:PesticideResidues {type: 'Pesticide Residues'})-[:KILLS]->(:WeedControl {type: 'Weed Control'})
	CREATE (:PesticideResidues {type: 'Pesticide Residues'})-[:POTENTIALLY_TOXIC_TO]->(:HumanHealth {type: 'Human Health'})
	CREATE (:PesticideResidues {type: 'Pesticide Residues'})-[:PROTECTS]->(:CropProtection {type: 'Crop Protection'})
	CREATE (:PesticideResidues {type: 'Pesticide Residues'})-[:REMAINS_IN]->(:SoilContamination {type: 'Soil Contamination'})
	CREATE (:PesticideResidues {type: 'Pesticide Residues'})-[:REMAINS_IN]->(:WaterPollution {type: 'Water Pollution'})
	CREATE (:PesticideUse)-[:PREVENTS]->(:CropLossPrevention)
	CREATE (:PhysicalActivity {type: 'Physical Activity'})-[:CONTRASTS]->(:SedentaryLifestyle {type: 'Sedentary Lifestyle'})
	CREATE (:PhysicalActivity {type: 'Physical Activity'})-[:CONTRIBUTES_TO]->(:GlobalHealthGoals {type: 'Global Health Goals'})
	CREATE (:PhysicalActivity {type: 'Physical Activity'})-[:ENHANCES]->(:MentalWellbeing {type: 'Mental Well-being'})
	CREATE (:PhysicalActivity {type: 'Physical Activity'})-[:IS_INFLUENCED_BY]->(:SocioeconomicFactor {type: 'Socioeconomic Factors'})
	CREATE (:PhysicalActivity {type: 'Physical Activity'})-[:OFFERS]->(:HealthBenefit {type: 'Health Benefits'})
	CREATE (:PhysicalActivity {type: 'Physical Activity'})-[:PROVIDES]->(:HealthBenefits {type: 'Health Benefits'})
	CREATE (:PhysicalActivity {type: 'Physical Activity'})-[:REDUCES]->(:ChronicDiseaseRisk {type: 'Chronic Disease Risk'})
	CREATE (:PhysicalActivity {type: 'Physical Activity'})-[:VARIES_BY]->(:DemographicCharacteristic {type: 'Demographic Characteristics'})
	CREATE (:PhysicalInactivity {type: 'Physical Inactivity'})-[:INCREASES]->(:HealthRisks {type: 'Health Risks'})
	CREATE (:PhysicalInactivity {type: 'Physical Inactivity'})-[:IS_A]->(:GlobalHealthConcern {type: 'Global Health Concern'})
	CREATE (:PolicyRecommendation {type: 'Policy Recommendations'})-[:INCREASES]->(:PhysicalActivityOpportunity {type: 'Physical Activity Opportunities'})
	CREATE (:RegularPhysicalActivity {type: 'Regular Physical Activity'})-[:PREVENTS]->(:ChronicDiseases {type: 'Chronic Diseases'})
	CREATE (:ResistanceTraining {type: 'Resistance Training'})-[:OFFERS]->(:HealthBenefit {type: 'Health Benefits'})
	CREATE (:SedentaryBehaviour {type: 'Sedentary Behaviour'})-[:INCREASES]->(:ChronicDiseaseRisk {type: 'Chronic Disease Risk'})
	CREATE (:SedentaryLifestyle {type: 'Sedentary Lifestyle'})-[:ASSOCIATED_WITH]->(:AdverseHealthOutcomes {type: 'Adverse Health Outcomes'})
	CREATE (:SustainableAgriculturePractices)-[:GUIDES]->(:PesticideUse)
	CREATE (:WorldHealthOrganization {type: 'World Health Organization (WHO)'})-[:DEFINES]->(:PhysicalActivityGuidelines {type: 'Physical Activity Guidelines'})
	CREATE (:WorldHealthOrganization {type: 'World Health Organization'})-[:DEVELOPS]->(:MaximumResidueLimits {type: 'MaximumResidue Limits'})
	CREATE (:WorldHealthOrganization)-[:CONDUCTS]->(:PesticideRiskAssessment)
    CREATE (:Academy {type: 'WHOAcademy'})-[:FOCUSSES_ON]->(:Training {type: 'CapacityBuildingAndTraining'})
    CREATE (:AcceptableDailyIntake {type: 'Acceptable Daily Intake'})-[:ESTIMATES_THE_ACCEPTABLE_DAILY_INTAKE_OF]->(:FoodAdditive {type: 'Food Additives'})
    CREATE (:AcidProduction {type: 'Acid Production'})-[:CAUSES]->(:ToothErosion {type: 'Tooth Erosion'})
    CREATE (:Activity {type: 'Physical Activity'})-[:INCREASES]->(:Expenditure {type: 'Energy Expenditure'})
    CREATE (:Activity {type: 'Physical Activity'})-[:INFLUENCES]->(:Outcome {type: 'Health Outcomes'})
    CREATE (:AcuteMalnutrition {type: 'Acute Malnutrition'})-[:INCLUDES]->(:Wasting {type: 'Wasting'})
    CREATE (:AddedSugars {type: 'Added Sugars'})-[:ASSOCIATED_WITH]->(:EnergyDenseFoods {type: 'Energy-Dense Foods'})
    CREATE (:AddedSugars {type: 'Added Sugars'})-[:CONTRIBUTES_TO]->(:ToothDecay {type: 'Tooth Decay'})
    CREATE (:AddedSugars {type: 'Added Sugars'})-[:SHOULD_BE_LESS_THAN_10_PERCENT_OF]->(:DailyEnergyIntake {type: 'Daily Energy Intake'})
    CREATE (:AdolescentHealth)-[:PART_OF]->(:GlobalStrategyForWomensChildrensAndAdolescentsHealth)
    CREATE (:AdolescentsAndYoungAdults {type: 'Adolescents and Young Adults'})-[:DISPROPORTIONATELY_AFFECTED_BY]->(:AlcoholAttributableMortality {type: 'Alcohol-Attributable Mortality'})
    CREATE (:AfricaRegion {type: 'Africa Region'})-[:PART_OF]->(:WorldHealthOrganization {type: 'World Health Organization'})
    CREATE (:AfricanRegion {type: 'African Region'})-[:IS]->(:RegionalHealthOffice {type: 'Regional Health Office'})
    CREATE (:AfricanRegion {type: 'African Region'})-[:IS]->(:WHORegionalOffice {type: 'WHO Regional Office'})
    CREATE (:AfricanRegion {type: 'African Region'})-[:IS_PART_OF]->(:RegionalHealthOffice {type: 'Regional Health Office'})
    CREATE (:Agency {type: 'Government Agencies'})-[:DEVELOPS]->(:Policy {type: 'Sodium Reduction Policies'})
    CREATE (:Agent {type: 'Immunotherapeutic Agents'})-[:TREATS]->(:Tumor {type: 'Tumors With High Microsatellite Instability'})
    CREATE (:AgriculturalWorkers)-[:EXPOSED_TO]->(:OccupationalExposure)
    CREATE (:AirPollution {type: 'Air Pollution'})-[:INCREASES_RISK_OF]->(:NonCommunicableDisease {type: 'Non-Communicable Diseases'})
    CREATE (:AlcoholConsumption {type: 'Alcohol Consumption'})-[:INCREASES_RISK_OF]->(:Carcinoma {type: 'Carcinoma'})
    CREATE (:AlcoholControlInitiative {type: 'SAFER'})-[:LAUNCHED_BY]->(:Organization {type: 'World Health Organization'})
    CREATE (:AlcoholControlInitiative {type: 'SAFER'})-[:REDUCES_HARM_CAUSED_BY]->(:Substance {type: 'Alcohol Consumption'})
    CREATE (:AlcoholIndustry {type: 'Alcohol Industry'})-[:MAY_CONFLICT_WITH]->(:Policy {type: 'Public Health Policy'})
    CREATE (:AlcoholIntake {type: 'Alcohol Intake'})-[:CAN_CAUSE]->(:SubstanceDependence {type: 'Substance Dependence'})
    CREATE (:AlcoholIntake {type: 'Alcohol Intake'})-[:CAUSES]->(:AdverseHealthEffects {type: 'Adverse Health Effects'})
    CREATE (:AlcoholIntake {type: 'Alcohol Intake'})-[:INCREASES_RISK_OF]->(:Carcinogenesis {type: 'Carcinogenesis'})
    CREATE (:AlcoholIntake {type: 'Alcohol Intake'})-[:INCREASES_RISK_OF]->(:CardiovascularDisease {type: 'Cardiovascular Disease'})
    CREATE (:AlcoholIntake {type: 'Alcohol Intake'})-[:INCREASES_RISK_OF]->(:ChronicDisease {type: 'Chronic Diseases'})
    CREATE (:AlcoholIntake {type: 'Alcohol Intake'})-[:INCREASES_RISK_OF]->(:InfectiousDisease {type: 'Infectious Diseases'})
    CREATE (:AlcoholIntake {type: 'Alcohol Intake'})-[:INCREASES_RISK_OF]->(:Injury {type: 'Injuries'})
    CREATE (:AlcoholPolicy {type: 'Alcohol Policy'})-[:PREVENT_AND_REDUCE]->(:HealthConsequence {type: 'Alcohol-Related Harm'})
    CREATE (:AlcoholRelatedMorbidity {type: 'Alcohol-Related Morbidity'})-[:INCLUDES]->(:Injuries {type: 'Injuries'})
    CREATE (:AlcoholUse {type: 'Alcohol Use'})-[:INCREASES_RISK_OF]->(:InfectiousDiseases {type: 'Infectious Diseases'})
    CREATE (:AlcoholUseDisorder {type: 'Alcohol Use Disorder'})-[:REQUIRES]->(:MentalHealthService {type: 'Mental Health Services'})
    CREATE (:AlcoholicBeverage {type: 'Alcoholic Beverages'})-[:CONTAINS]->(:Chemical {type: 'Ethanol'})
    CREATE (:AlcoholicBeverage {type: 'Alcoholic Beverages'})-[:IS]->(:PsychoactiveSubstance {type: 'Psychoactive Substance'})
    CREATE (:AlcoholicBeverage {type: 'Alcoholic Beverages'})-[:IS]->(:ToxicSubstance {type: 'Toxic Substance'})
    CREATE (:Alliance {type: 'Food Safety Alliance'})-[:TAKES]->(:Approach {type: 'One Health Approach'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:ADDRESSED_BY]->(:WorldHealthOrganization {type: 'World Health Organization'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:AFFECTS]->(:LowResourceSettings {type: 'Low-Resource Settings'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:CAUSED_BY]->(:ChronicConditions {type: 'Chronic Conditions'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:CAUSED_BY]->(:ChronicDisease {type: 'Chronic diseases'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:CAUSED_BY]->(:GeneticPredisposition {type: 'Genetic Predisposition'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:CAUSED_BY]->(:HIV_AIDS {type: 'HIV/AIDS'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:CAUSED_BY]->(:Haemoglobinopathies {type: 'Haemoglobinopathies'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:CAUSED_BY]->(:Haemoglobinopathy {type: 'Haemoglobinopathies'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:CAUSED_BY]->(:InfectiousDisease {type: 'Infectious diseases'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:CAUSED_BY]->(:InfectiousDiseases {type: 'Infectious Diseases'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:CAUSED_BY]->(:IronDeficiencyAnaemia {type: 'Iron Deficiency Anaemia'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:CAUSED_BY]->(:Malaria {type: 'Malaria'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:CAUSED_BY]->(:Malnutrition {type: 'Malnutrition'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:CAUSED_BY]->(:MenstrualBloodLoss {type: 'Menstrual blood loss'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:CAUSED_BY]->(:MenstrualDisorders {type: 'Menstrual Disorders'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:CAUSED_BY]->(:PregnancyRelatedComplications {type: 'Pregnancy-Related Complications'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:CAUSED_BY]->(:SickleCellDisease {type: 'Sickle Cell Disease'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:COMMONLY_FOUND_IN]->(:SocioeconomicallyDisadvantagedPopulations {type: 'Socioeconomically Disadvantaged Populations'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:IS]->(:GlobalHealthIssue {type: 'Global Health Issue'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:IS]->(:PreventableCondition {type: 'Preventable Condition'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:IS]->(:TreatableCondition {type: 'Treatable Condition'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:MAINLY_AFFECTS]->(:VulnerablePopulations {type: 'Vulnerable Populations'})
    CREATE (:Anaemia {type: 'Anaemia'})-[:TREATED_BY]->(:NutritionalIntervention {type: 'Nutritional interventions'})
    CREATE (:AntimicrobialTherapy {type: 'Antimicrobial Therapy'})-[:MAY_SELECT_FOR]->(:AntimicrobialResistance {type: 'Antimicrobial Resistance'})
    CREATE (:Arsenic {type: 'Arsenic'})-[:AFFECTS]->(:FoodSafety {type: 'Food Safety'})
    CREATE (:ArtificialSweetener {type: 'Artificial Sweeteners'})-[:DOES_NOT_BENEFIT]->(:WeightManagement {type: 'Weight Management'})
    CREATE (:ArtificialSweetener {type: 'Artificial Sweeteners'})-[:MAY_INCREASE_RISK_OF]->(:ChronicDisease {type: 'Chronic Diseases'})
    CREATE (:Bacteria {type: 'Salmonella'})-[:BELONGS_TO]->(:Family {type: 'Enterobacteriaceae Family'})
    CREATE (:Bacteria {type: 'Salmonella'})-[:CAUSES]->(:Disease {type: 'Diarrheal Diseases'})
    CREATE (:Bacteria {type: 'Salmonella'})-[:CONTRIBUTES_TO]->(:Illness {type: 'Foodborne Illnesses'})
    CREATE (:Bacteria {type: 'Salmonella'})-[:PASSES_THROUGH]->(:SupplyChain {type: 'Food Supply Chain'})
    CREATE (:Bacteria {type: 'Salmonella'})-[:PRESENT_IN]->(:Feed {type: 'Animal Feed'})
    CREATE (:Bacterium {type: 'Escherichia Coli'})-[:IS_A_TYPE_OF]->(:Category {type: 'Infectious Diseases'})
    CREATE (:Behavior {type: 'Healthy Eating'})-[:CONTRIBUTES_TO]->(:PreventionStrategy {type: 'Obesity Prevention'})
    CREATE (:Behavior {type: 'Healthy Eating'})-[:PREVENTS]->(:Condition {type: 'Overweight And Obesity'})
    CREATE (:BloodPressureRegulation {type: 'Sodium'})-[:AFFECTS]->(:PhysiologicalProcess {type: 'Blood Pressure Regulation'})
    CREATE (:Botulism {type: 'Botulism'})-[:AFFECTS]->(:FoodSafety {type: 'Food Safety'})
    CREATE (:Breastfeeding {type: 'Breastfeeding'})-[:FOSTERS]->(:GrowthAndDevelopment {type: 'Growth And Development'})
    CREATE (:Breastfeeding {type: 'Breastfeeding'})-[:PROVIDES]->(:InfantNutrition {type: 'Infant Nutrition'})
    CREATE (:CaloricIntake {type: 'Caloric Intake'})-[:SHOULD_BE_IN_BALANCE_WITH]->(:PhysicalActivity {type: 'Physical Activity'})
    CREATE (:Campylobacteriosis {type: 'Campylobacteriosis'})-[:AFFECTS]->(:FoodSafety {type: 'Food Safety'})
    CREATE (:Cancer)-[:CAN_BE_REDUCED_THROUGH]->(:EarlyDetection)
    CREATE (:CancerDiagnosis)-[:DETERMINES]->(:TreatmentProtocol)
    CREATE (:CancerTherapy)-[:AIMS_TO_ACHIEVE]->(:Remission)
    CREATE (:Carcinogenesis)-[:DECREASED_BY]->(:NutritionalBalance)
    CREATE (:Carcinogenesis)-[:INCREASED_BY]->(:TobaccoUse)
    CREATE (:Carcinoma {type: 'Carcinoma'})-[:ALSO_KNOWN_AS]->(:MalignantTumors {type: 'Malignant Tumors'})
    CREATE (:Carcinoma {type: 'Carcinoma'})-[:ALSO_KNOWN_AS]->(:Neoplasia {type: 'Neoplasia'})
    CREATE (:Carcinoma {type: 'Carcinoma'})-[:CHARACTERIZED_BY]->(:NeoplasticCells {type: 'Neoplastic Cells'})
    CREATE (:CardiovascularDiseaseRisk {type: 'Sodium Intake'})-[:INCREASES]->(:DiseaseRisk {type: 'Cardiovascular Disease Risk'})
    CREATE (:CariesPrevention {type: 'Caries Prevention'})-[:INVOLVES]->(:ReducedAddedSugarsConsumption {type: 'Reduced Added Sugars Consumption'})
    CREATE (:Category {type: 'Health Topics'})-[:COVERS]->(:Category {type: 'Diseases and Conditions'})
    CREATE (:Category {type: 'Health Topics'})-[:PROVIDES]->(:Resource {type: 'Health Resources'})
    CREATE (:Cestode {type: 'Cestodes'})-[:INFECT_THROUGH_DIRECT_CONTACT_WITH]->(:Animal {type: 'Animals'})
    CREATE (:Challenge {type: 'DoubleBurdenOfMalnutrition'})-[:CHALLENGES]->(:Field {type: 'GlobalHealth'})
    CREATE (:ChildHealth)-[:PART_OF]->(:GlobalStrategyForWomensChildrensAndAdolescentsHealth)
    CREATE (:ChronicDisease {type: 'Chronic diseases'})-[:LEADS_TO]->(:Inflammation {type: 'Inflammation'})
    CREATE (:ChronicDisease {type: 'Sodium Excess'})-[:LINKED_TO]->(:Condition {type: 'Sodium Excess'})
    CREATE (:ChronicMalnutrition {type: 'Chronic Malnutrition'})-[:INCLUDES]->(:Stunting {type: 'Stunting'})
    CREATE (:Ciguatoxins {type: 'Ciguatoxins'})-[:FOUND_IN]->(:Fish {type: 'Fish'})
    CREATE (:ClimateChange)-[:IMPACTS]->(:FoodSafety)
    CREATE (:CodexAlimentariusCommission {type: 'Codex Alimentarius Commission'})-[:BASED_ON]->(:JECFA {type: 'JECFA'})
    CREATE (:CodexAlimentariusCommission {type: 'Codex Alimentarius Commission'})-[:ESTABLISHES]->(:FoodSafetyStandards {type: 'Food Safety Standards'})
    CREATE (:CodexAlimentariusCommission {type: 'Codex Alimentarius Commission'})-[:ESTABLISHES_LEVELS_FOR_MAXIMUM_USE_OF]->(:FoodAdditive {type: 'Food Additives'})
    CREATE (:CodexAlimentariusCommission {type: 'Codex Alimentarius Commission'})-[:SETS]->(:FoodSafetyStandard {type: 'Food Safety Standards'})
    CREATE (:CodexAlimentariusCommission {type: 'Codex Alimentarius Commission'})-[:SETS]->(:InternationalFoodSafetyStandards {type: 'International Food Safety Standards'})
    CREATE (:CodexAlimentariusCommission {type: 'Codex Alimentarius Commission'})-[:SETS]->(:InternationalFoodStandards {type: 'International Food Standards'})
    CREATE (:CognitiveDevelopment {type: 'Iodized Salt'})-[:SUPPORTS]->(:DevelopmentalProcess {type: 'Cognitive Development'})
    CREATE (:ColorectalCancer {type: 'Colorectal Cancer'})-[:AFFECTS]->(:LargeIntestine {type: 'Large Intestine'})
    CREATE (:ColorectalCancer {type: 'Colorectal Cancer'})-[:AFFECTS]->(:Organ {type: 'Large Intestine'})
    CREATE (:ColorectalCancer {type: 'Colorectal Cancer'})-[:AFFECTS]->(:Organ {type: 'Rectum'})
    CREATE (:ColorectalCancer {type: 'Colorectal Cancer'})-[:AFFECTS]->(:Rectum {type: 'Rectum'})
    CREATE (:ColorectalCancer {type: 'Colorectal Cancer'})-[:EARLY_DETECTION_THROUGH]->(:MedicalProcedure {type: 'Screening'})
    CREATE (:ColorectalCancer {type: 'Colorectal Cancer'})-[:EARLY_DETECTION_THROUGH]->(:Screening {type: 'Screening'})
    CREATE (:ColorectalCancer {type: 'Colorectal Cancer'})-[:MAY_INCLUDE]->(:ClinicalManifestations {type: 'Clinical Manifestations'})
    CREATE (:ColorectalCancer {type: 'Colorectal Cancer'})-[:MAY_INCLUDE]->(:Symptom {type: 'Clinical Manifestations'})
    CREATE (:ColorectalCancer {type: 'Colorectal Cancer'})-[:RISK_FACTOR]->(:DietaryHabits {type: 'Dietary Habits'})
    CREATE (:ColorectalCancer {type: 'Colorectal Cancer'})-[:RISK_FACTOR]->(:FamilyHistory {type: 'Family History'})
    CREATE (:ColorectalCancer {type: 'Colorectal Cancer'})-[:RISK_FACTOR]->(:Lifestyle {type: 'Dietary Habits'})
    CREATE (:ColorectalCancer {type: 'Colorectal Cancer'})-[:RISK_FACTOR]->(:MedicalHistory {type: 'Family History'})
    CREATE (:ColorectalCancer {type: 'Colorectal Cancer'})-[:RISK_INCREASES_WITH]->(:Age {type: 'Age'})
    CREATE (:ColorectalCancer {type: 'Colorectal Cancer'})-[:RISK_INCREASES_WITH]->(:Demographic {type: 'Age'})
    CREATE (:Commission {type: 'Childhood Obesity Commission'})-[:PROPOSED]->(:Strategy {type: 'Childhood Obesity Prevention'})
    CREATE (:Committee {type: 'Codex Committee On Contaminants In Foods'})-[:RESPONSIBLE_FOR]->(:Concept {type: 'FoodSafety'})
    CREATE (:Concept {type: 'Food Safety'})-[:INVOLVES]->(:Concept {type: 'Chemical Contamination'})
    CREATE (:Concept {type: 'Food Contaminants'})-[:INCLUDES]->(:Concept {type: 'Food Toxins'})
    CREATE (:Concept {type: 'Food Safety'})-[:INVOLVES]->(:Concept {type: 'Foodborne Hazards'})
    CREATE (:Concept {type: 'Food Toxins'})-[:INCLUDES]->(:Concept {type: 'Mycotoxins'})
    CREATE (:Concept {type: 'Foodborne Hazards'})-[:REQUIRES]->(:Concept {type: 'Risk Analysis'})
    CREATE (:Concept {type: 'Foodborne Hazards'})-[:INCLUDES]->(:Concept {type: 'Food Contaminants'})
    CREATE (:Concept {type: 'Geographic Regions'})-[:INCLUDES]->(:Location {type: 'Africa Region'})
    CREATE (:Concept {type: 'International Food Standards'})-[:REGULATES]->(:Concept {type: 'Food Contaminant Limits'})
    CREATE (:Concept {type: 'Nutrition Security'})-[:INVOLVES]->(:Concept {type: 'Foodborne Hazards'})
    CREATE (:Concept {type: 'Risk Analysis'})-[:FOLLOWS]->(:Methodology {type: 'Risk Assessment Methodologies'})
    CREATE (:Condition {type: 'Acute Malnutrition'})-[:AFFECTS]->(:Demographic {type: 'Preschool Children'})
    CREATE (:Condition {type: 'Childhood Obesity'})-[:INCREASES_RISK_OF]->(:Condition {type: 'Adult Obesity'})
    CREATE (:Condition {type: 'Dehydration'})-[:CHARACTERIZED_BY]->(:Imbalance {type: 'Electrolyte Imbalance'})
    CREATE (:Condition {type: 'Diabetes Mellitus'})-[:IS_TYPE_OF]->(:Category {type: 'Non Communicable Diseases'})
    CREATE (:Condition {type: 'Health Disparities'})-[:LEADS_TO]->(:Outcome {type: 'Premature Mortality'})
    CREATE (:Condition {type: 'Hyperglycemia'})-[:CAUSED_BY]->(:Disease {type: 'Diabetes Mellitus'})
    CREATE (:Condition {type: 'Malnutrition'})-[:AFFECTS]->(:Field {type: 'PediatricNutrition'})
    CREATE (:Condition {type: 'Malnutrition'})-[:CO_EXISTS_WITH]->(:Disorder {type: 'Obesity'})
    CREATE (:Condition {type: 'Malnutrition'})-[:TYPE_OF]->(:Condition {type: 'Acute Malnutrition'})
    CREATE (:Condition {type: 'Noncommunicable Diseases'})-[:REFERS_TO]->(:Condition {type: 'Noncommunicable Diseases'})
    CREATE (:Condition {type: 'Noncommunicable Diseases'})-[:LINKED_TO]->(:Field {type: 'Nutrition'})
    CREATE (:Condition {type: 'Obesity'})-[:RELATED_TO]->(:Condition {type: 'Overweight'})
    CREATE (:Condition {type: 'Oral Health'})-[:IS_PART_OF]->(:Resource {type: 'Nutrition Fact Sheets'})
    CREATE (:Condition {type: 'Overweight'})-[:IS]->(:ExcessBodyFat {type: 'Excess Body Fat'})
    CREATE (:Condition {type: 'Overweight'})-[:RELATED_TO]->(:Condition {type: 'Obesity'})
    CREATE (:Contaminant {type: 'Radioactive Contaminants'})-[:DISCHARGED_FROM]->(:IndustrialFacility {type: 'Industrial Facilities'})
    CREATE (:CostEffectiveIntervention {type: 'Sodium Reduction'})-[:IS]->(:Intervention {type: 'Sodium Reduction'})
    CREATE (:Countries {type: 'Countries'})-[:IS]->(:GlobalHealthOrganization {type: 'Global Health Organization'})
    CREATE (:Countries {type: 'Countries'})-[:IS_COVERED_BY]->(:GlobalHealthOrganization {type: 'Global Health Organization'})
    CREATE (:CyanogenicGlycosides {type: 'Cyanogenic Glycosides'})-[:FOUND_IN]->(:PlantBasedFoods {type: 'Plant-Based Foods'})
    CREATE (:CyanogenicGlycosides {type: 'Cyanogenic Glycosides'})-[:SUBCLASS_OF]->(:Phytochemicals {type: 'Phytochemicals'})
    CREATE (:DMFTIndex {type: 'DMFT Index'})-[:MEASURES]->(:ToothDecaySeverity {type: 'Tooth Decay Severity'})
    CREATE (:Data {type: 'Global Health Data'})-[:VISUALIZED_IN]->(:Visualization {type: 'Health Data Visualization'})
    CREATE (:Data {type: 'Health Data'})-[:VISUALIZED_THROUGH]->(:Tool {type: 'Data Visualization Tools'})
    CREATE (:Data {type: 'Health Data'})-[:VISUALIZED_THROUGH]->(:Tool {type: 'DataVisualizationTools'})
    CREATE (:DataSecurity {type: 'Data Protection'})-[:RELATED_TO]->(:DataSharing {type: 'Information Sharing'})
    CREATE (:Database {type: 'Global Health Observatory'})-[:TRACKS]->(:MedicalCondition {type: 'Anemia in Women and Children'})
    CREATE (:Declaration {type: 'Nutrition Declaration'})-[:RESULTED_FROM]->(:Event {type: 'International Nutrition Conference'})
    CREATE (:DegenerativeJointDisease {type: 'Osteoarthritis'})-[:IS]->(:DegenerativeJointDisease {type: 'Degenerative Joint Disease'})
    CREATE (:Demographic {type: 'Adults'})-[:DEFINED_BY]->(:BMICategory {type: 'BMI Greater Than or Equal To 25', category: 'Overweight'})
    CREATE (:Demographic {type: 'Adults'})-[:DEFINED_BY]->(:BMICategory {type: 'BMI Greater Than or Equal To 30', category: 'Obesity'})
    CREATE (:Demographic {type: 'Children Under 5 Years'})-[:DEFINED_BY]->(:WeightForHeightCategory {type: 'Weight-For-Height Greater Than 2 Standard Deviations Above WHO Child Growth Standards Median', category: 'Overweight'})
    CREATE (:Demographic {type: 'Children Under 5 Years'})-[:DEFINED_BY]->(:WeightForHeightCategory {type: 'Weight-For-Height Greater Than 3 Standard Deviations Above WHO Child Growth Standards Median', category: 'Obesity'})
    CREATE (:DengueFever {type: 'Dengue Fever'})-[:IS]->(:InfectiousDisease {type: 'Infectious Disease'})
    CREATE (:DengueFever {type: 'Dengue Fever'})-[:IS_A]->(:InfectiousDisease {type: 'Infectious Disease'})
    CREATE (:Department {type: 'Media Centre'})-[:CONTAINS]->(:Resource {type: 'Information Resources'})
    CREATE (:Diet {type: 'Balanced Diet'})-[:RELATED_TO]->(:Activity {type: 'Physical Activity'})
    CREATE (:DietaryComponent {type: 'Artificial Trans Fat'})-[:SHOULD_BE_AVOIDED_IN]->(:Diet {type: 'Balanced Diet'})
    CREATE (:DietaryComponent {type: 'Dietary Saturated Fat'})-[:SHOULD_BE_LESS_THAN_10_PERCENT_OF]->(:DailyEnergyIntake {type: 'Total Daily Energy Intake'})
    CREATE (:DietaryComponent {type: 'Dietary Sodium'})-[:AFFECTS]->(:HealthOutcome {type: 'Population Health'})
    CREATE (:DietaryComponent {type: 'Dietary Trans Fat'})-[:SHOULD_BE_LESS_THAN_1_PERCENT_OF]->(:DailyEnergyIntake {type: 'Total Daily Energy Intake'})
    CREATE (:DietaryComponent {type: 'Unsaturated Fatty Acids'})-[:SHOULD_REPLACE]->(:DietaryComponent {type: 'Saturated And Trans Fatty Acids'})
    CREATE (:DietaryFat {type: 'Dietary Fat'})-[:SHOULD_NOT_EXCEED_30_PERCENT_OF]->(:DailyEnergyIntake {type: 'Daily Energy Intake'})
    CREATE (:DietaryGuideline {type: 'Dietary Guidelines'})-[:PROVIDES_RECOMMENDATIONS_ON]->(:PhysicalActivity {type: 'Physical Activity'})
    CREATE (:DietaryHabits {type: 'Dietary Habits'})-[:INCLUDES_LOW_INTAKE_OF]->(:Food {type: 'Red and Processed Meat'})
    CREATE (:DietaryHabits {type: 'Dietary Habits'})-[:INCLUDES_LOW_INTAKE_OF]->(:RedAndProcessedMeat {type: 'Red and Processed Meat'})
    CREATE (:DietaryHabits {type: 'Dietary Habits'})-[:INCLUDES_HIGH_INTAKE_OF]->(:Food {type: 'Fruits and Vegetables'})
    CREATE (:DietaryHabits {type: 'Dietary Habits'})-[:INCLUDES_HIGHT_INTAKE_OF]->(:FruitsAndVegetables {type: 'Fruits and Vegetables'})
    CREATE (:DietaryTargets)-[:SUPPORTED_BY]->(:GlobalStrategyForWomensChildrensAndAdolescentsHealth)
    CREATE (:Dioxins {type: 'Dioxins'})-[:AFFECTS]->(:FoodSafety {type: 'Food Safety'})
    CREATE (:Disease {type: 'Advanced Colorectal Cancer'})-[:IS_TREATED_WITH]->(:MedicalProcedure {type: 'Systemic Chemotherapy'})
    CREATE (:Disease {type: 'Anaemia'})-[:AFFECTS]->(:SocioeconomicStatus {type: 'Low Socioeconomic Status'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSED_BY]->(:ChronicDisease {type: 'Chronic Diseases'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSED_BY]->(:GeneticDisorder {type: 'Sickle Cell Disease'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSED_BY]->(:GeneticDisorder {type: 'Thalassaemia'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSED_BY]->(:GeneticPredisposition {type: 'Genetic Predisposition'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSED_BY]->(:GynaecologicalCondition {type: 'Menorrhagia'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSED_BY]->(:InfectiousDisease {type: 'Infectious Diseases'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSED_BY]->(:InfectiousDisease {type: 'Malaria'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSED_BY]->(:NutritionalDeficiency {type: 'Folate Deficiency'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSED_BY]->(:NutritionalDeficiency {type: 'Iron Deficiency'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSED_BY]->(:NutritionalDeficiency {type: 'Poor Nutrition'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSED_BY]->(:NutritionalDeficiency {type: 'Riboflavin Deficiency'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSED_BY]->(:NutritionalDeficiency {type: 'Vitamin A Deficiency'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSED_BY]->(:NutritionalDeficiency {type: 'Vitamin B12 Deficiency'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSED_BY]->(:PregnancyRelatedComplication {type: 'Pregnancy-Related Complications'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSES]->(:Symptom {type: 'Dizziness'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSES]->(:Symptom {type: 'Dyspnea'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSES]->(:Symptom {type: 'Easy Bruising'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSES]->(:Symptom {type: 'Fatigue'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSES]->(:Symptom {type: 'Headache'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSES]->(:Symptom {type: 'Lethargy'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSES]->(:Symptom {type: 'Pallor'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSES]->(:Symptom {type: 'Peripheral Cyanosis'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSES]->(:Symptom {type: 'Reduced Physical Performance'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSES]->(:Symptom {type: 'Tachycardia'})
    CREATE (:Disease {type: 'Anaemia'})-[:CAUSES]->(:Symptom {type: 'Tachypnea'})
    CREATE (:Disease {type: 'Anaemia'})-[:COMMON_IN]->(:Education {type: 'Limited Education'})
    CREATE (:Disease {type: 'Anaemia'})-[:COMMON_IN]->(:Household {type: 'Low-Income Households'})
    CREATE (:Disease {type: 'Anaemia'})-[:COMMON_IN]->(:Population {type: 'Rural Populations'})
    CREATE (:Disease {type: 'Bovine Spongiform Encephalopathy (BSE)'})-[:AFFECTS]->(:Livestock {type: 'Livestock'})
    CREATE (:Disease {type: 'Breast Neoplasms'})-[:IMPROVES]->(:HealthOutcome {type: 'Survival Rate'})
    CREATE (:Disease {type: 'Cardiovascular Disease'})-[:LINKED_TO]->(:Exposure {type: 'Lead Exposure'})
    CREATE (:Disease {type: 'Cervical Neoplasms'})-[:PREVENTED_THROUGH]->(:MedicalProcedure {type: 'Cancer Screening'})
    CREATE (:Disease {type: 'Cholera'})-[:IS_A_TYPE_OF]->(:Category {type: 'Infectious Diseases'})
    CREATE (:Disease {type: 'Chronic Diseases'})-[:AFFECTS]->(:Region {type: 'Geographic Regions'})
    CREATE (:Disease {type: 'Chronic Diseases'})-[:HAS_PREVENTION_STRATEGY]->(:Strategy {type: 'Global NCD Action Plan'})
    CREATE (:Disease {type: 'Chronic Diseases'})-[:IS_ADDRESSED_BY]->(:Organization {type: 'World Health Organization'})
    CREATE (:Disease {type: 'Chronic Diseases'})-[:IS_EXACERBATED_BY]->(:Condition {type: 'Health Disparities'})
    CREATE (:Disease {type: 'Chronic Diseases'})-[:MAY_REQUIRE]->(:Therapy {type: 'Renal Replacement Therapy'})
    CREATE (:Disease {type: 'Colorectal Cancer'})-[:IS_DETECTED_BY]->(:MedicalProcedure {type: 'Colorectal Cancer Screening'})
    CREATE (:Disease {type: 'Colorectal Cancer'})-[:IS_TREATED_WITH]->(:MedicalProcedure {type: 'Surgical Intervention'})
$$) AS (a agtype);