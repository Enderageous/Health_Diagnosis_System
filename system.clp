; Template untuk pasien dan fakta kesehatan
(deftemplate fact
   (slot description))

(defrule fever-implies-infection
   (fact (description fever))
   =>
   (assert (fact (description "possible infection"))))

(defrule cough-implies-respiratory
   (fact (description cough))
   =>
   (assert (fact (description "possible respiratory issue"))))

(defrule rash-implies-skin-condition
   (fact (description rash))
   =>
   (assert (fact (description "possible skin condition"))))

(defrule nausea-implies-digestive-issue
   (fact (description nausea))
   =>
   (assert (fact (description "possible digestive issue"))))

(defrule headache-implies-neurological 
   (fact (description headache))
   =>
   (assert (fact (description "possible neurological issue"))))

(defrule chest-pain-implies-cardiac
   (fact (description chest-pain))
   =>
   (assert (fact (description "possible cardiac issue"))))

(defrule fatigue-implies-chronic-condition
   (fact (description fatigue))
   =>
   (assert (fact (description "possible chronic condition"))))

(defrule sneezing-implies-allergy
   (fact (description sneezing))
   =>
   (assert (fact (description "possible allergy"))))

(defrule dry-mouth-implies-dehydration
   (fact (description dry-mouth))
   =>
   (assert (fact (description "possible dehydration"))))

(defrule sore-throat-implies-throat-infection
   (fact (description sore-throat))
   =>
   (assert (fact (description "possible throat infection"))))

(defrule toothache-implies-dental-issue
   (fact (description toothache))
   =>
   (assert (fact (description "possible dental issue"))))

; Aturan 12-26: Gejala kombinasi untuk diagnosis lebih spesifik
(defrule fever-and-cough-implies-flu
   (fact (description fever))
   (fact (description cough))
   =>
   (assert (fact (description "possible flu"))))

(defrule fever-and-rash-implies-measles
   (fact (description fever))
   (fact (description rash))
   =>
   (assert (fact (description "possible measles"))))

(defrule cough-and-wheezing-implies-asthma
   (fact (description cough))
   (fact (description wheezing))
   =>
   (assert (fact (description "possible asthma"))))

(defrule nausea-and-vomiting-implies-food-poisoning
   (fact (description nausea))
   (fact (description vomiting))
   =>
   (assert (fact (description "possible food poisoning"))))

(defrule rash-and-swelling-implies-skin-allergy
   (fact (description rash))
   (fact (description swelling))
   =>
   (assert (fact (description "possible skin allergy"))))

(defrule fatigue-and-shortness-of-breath-implies-anemia
   (fact (description fatigue))
   (fact (description shortness-of-breath))
   =>
   (assert (fact (description "possible anemia"))))

(defrule chest-pain-and-radiating-pain-implies-heart-attack
   (fact (description chest-pain))
   (fact (description radiating-pain))
   =>
   (assert (fact (description "possible heart attack"))))

(defrule headache-and-nausea-implies-migraine
   (fact (description headache))
   (fact (description nausea))
   =>
   (assert (fact (description "possible migraine"))))

(defrule sneezing-and-rash-implies-allergy
   (fact (description sneezing))
   (fact (description rash))
   =>
   (assert (fact (description "possible allergy"))))

(defrule fatigue-and-dry-mouth-implies-dehydration
   (fact (description fatigue))
   (fact (description dry-mouth))
   =>
   (assert (fact (description "severe dehydration"))))

(defrule toothache-and-swelling-implies-gum-disease
   (fact (description toothache))
   (fact (description swelling))
   =>
   (assert (fact (description "possible gum disease"))))

(defrule toothache-and-hole-implies-dental-cavity
   (fact (description toothache))
   (fact (description hole))
   =>
   (assert (fact (description "possible dental cavity"))))

(defrule toothache-and-pus-implies-dental-abscess
   (fact (description toothache))
   (fact (description pus))
   =>
   (assert (fact (description "possible dental abscess"))))

(defrule ear-pain-and-itching-implies-ear-infection
   (fact (description ear-pain))
   (fact (description itching))
   =>
   (assert (fact (description "possible ear infection"))))

(defrule sore-eye-and-itching-implies-eye-infection
   (fact (description sore-eye))
   (fact (description itching))
   =>
   (assert (fact (description "possible eye infection"))))

; Aturan 27-38: Diagnosis kompleks dan lanjutan
(defrule fever-cough-fatigue-implies-covid
   (fact (description fever))
   (fact (description cough))
   (fact (description fatigue))
   =>
   (assert (fact (description "possible COVID-19"))))

(defrule nausea-and-stomach-pain-implies-ulcer
   (fact (description nausea))
   (fact (description stomach-pain))
   =>
   (assert (fact (description "possible stomach ulcer"))))

(defrule shortness-of-breath-and-chest-pain-implies-pneumonia
   (fact (description shortness-of-breath))
   (fact (description chest-pain))
   =>
   (assert (fact (description "possible pneumonia"))))

(defrule rash-and-itching-implies-skin-infection
   (fact (description rash))
   (fact (description itching))
   =>
   (assert (fact (description "possible skin infection"))))

(defrule headache-and-dizziness-implies-brain-issue
   (fact (description headache))
   (fact (description dizziness))
   =>
   (assert (fact (description "possible neurological issue"))))

(defrule chest-pain-and-nausea-implies-cardiac-issue
   (fact (description chest-pain))
   (fact (description nausea))
   =>
   (assert (fact (description "possible cardiac issue"))))

(defrule fatigue-and-rash-implies-autoimmune-disease
   (fact (description fatigue))
   (fact (description rash))
   =>
   (assert (fact (description "possible autoimmune disease"))))

(defrule fever-and-swelling-implies-severe-infection
   (fact (description fever))
   (fact (description swelling))
   =>
   (assert (fact (description "possible severe infection"))))

(defrule chest-pain-and-fatigue-implies-angina
   (fact (description chest-pain))
   (fact (description fatigue))
   =>
   (assert (fact (description "possible angina"))))

(defrule mouth-pain-and-swelling-and-irritation-implies-mouth-ulcer
   (fact (description mouth-pain))
   (fact (description swelling))
   (fact (description irritation))
   =>
   (assert (fact (description "possible mouth ulcer"))))

(defrule nose-pain-and-blocked-nose-and-swelling-implies-sinus-infection
   (fact (description nose-pain))
   (fact (description blocked-nose))
   (fact (description swelling))
   =>
   (assert (fact (description "possible sinus infection"))))

(defrule no-diagnosis
   (not (fact (description ?any)))
   =>
   (assert (fact (description "unknown condition"))))

; Rule untuk mencetak hasil inferensi
(defrule print-facts
   ?f <- (fact (description ?desc))
   =>
   (printout t "Inferenced Fact: " ?desc crlf))
