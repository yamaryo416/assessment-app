# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_01_141544) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bathyesthesia_scales", force: :cascade do |t|
    t.integer "right_upper_limb"
    t.integer "left_upper_limb"
    t.integer "right_lower_limb"
    t.integer "left_lower_limb"
    t.integer "right_finger"
    t.integer "left_finger"
    t.integer "right_toe"
    t.integer "left_toe"
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_bathyesthesia_scales_on_patient_id"
  end

  create_table "bestest_scales", force: :cascade do |t|
    t.integer "from_sitting_to_standing"
    t.integer "standing_on_tiptoes"
    t.integer "standing_on_one_leg"
    t.integer "forward_step"
    t.integer "back_step"
    t.integer "lateral_step"
    t.integer "standing"
    t.integer "standing_with_eyes_close"
    t.integer "standing_on_the_slope"
    t.integer "change_walking_speed"
    t.integer "walking_with_rotating_the_head"
    t.integer "pibot_turn"
    t.integer "straddling_obstacles"
    t.integer "tug"
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_bestest_scales_on_patient_id"
  end

  create_table "brs_scales", force: :cascade do |t|
    t.integer "upper_limb"
    t.integer "finger"
    t.integer "lower_limb"
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_brs_scales_on_patient_id"
  end

  create_table "fact_scales", force: :cascade do |t|
    t.integer "sitting_with_upper_limb_support"
    t.integer "sitting_with_no_support"
    t.integer "lower_lateral_dynamic_sitting"
    t.integer "forward_dynamic_sitting"
    t.integer "lateral_dynamic_sitting"
    t.integer "rear_lateral_dynamic_sitting"
    t.integer "rear_dynamic_sitting"
    t.integer "lateral_dynamic_sitting_with_trunk_rotation"
    t.integer "trunk_rotation"
    t.integer "trunk_extenxion"
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_fact_scales_on_patient_id"
  end

  create_table "fbs_scales", force: :cascade do |t|
    t.integer "stand_up"
    t.integer "standing"
    t.integer "sitting"
    t.integer "sit_down"
    t.integer "transfer"
    t.integer "standing_with_eyes_close"
    t.integer "standing_with_leg_close"
    t.integer "reach_forward"
    t.integer "pickup_from_floor"
    t.integer "turn_around"
    t.integer "one_rotation"
    t.integer "stepup_and_down"
    t.integer "tandem_standing"
    t.integer "standing_with_one_leg"
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_fbs_scales_on_patient_id"
  end

  create_table "hdsr_scales", force: :cascade do |t|
    t.integer "age"
    t.integer "year"
    t.integer "month"
    t.integer "day"
    t.integer "day_of_the_week"
    t.integer "place"
    t.integer "first_three_word"
    t.integer "second_three_word"
    t.integer "third_three_word"
    t.integer "first_subtraction"
    t.integer "second_subtraction"
    t.integer "revese_three_number"
    t.integer "revese_four_number"
    t.integer "memory_first_word"
    t.integer "memory_second_word"
    t.integer "memory_third_word"
    t.integer "five_goods"
    t.integer "vegetables"
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_hdsr_scales_on_patient_id"
  end

  create_table "mas_scales", force: :cascade do |t|
    t.integer "right_elbow_joint"
    t.integer "left_elbow_joint"
    t.integer "right_wrist_joint"
    t.integer "left_wrist_joint"
    t.integer "right_knee_joint"
    t.integer "left_knee_joint"
    t.integer "right_ankle_joint"
    t.integer "left_ankle_joint"
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_mas_scales_on_patient_id"
  end

  create_table "mmt_scales", force: :cascade do |t|
    t.integer "neck_flexion"
    t.integer "neck_extension"
    t.integer "trunk_flexion"
    t.integer "trunk_extension"
    t.integer "right_shoulder_flexion"
    t.integer "left_shoulder_flexion"
    t.integer "right_shoulder_extension"
    t.integer "left_shoulder_extension"
    t.integer "right_shoulder_abduction"
    t.integer "left_shoulder_abduction"
    t.integer "right_shoulder_horizontal_adduction"
    t.integer "left_shoulder_horizontal_adduction"
    t.integer "right_shoulder_horizontal_abduction"
    t.integer "left_shoulder_horizontal_abduction"
    t.integer "right_shoulder_internal_rotation"
    t.integer "left_shoulder_internal_rotation"
    t.integer "right_shoulder_external_rotation"
    t.integer "left_shoulder_external_rotation"
    t.integer "right_elbow_flexion"
    t.integer "left_elbow_flexion"
    t.integer "right_elbow_extension"
    t.integer "left_elbow_extension"
    t.integer "right_forearm_pronation"
    t.integer "left_forearm_pronation"
    t.integer "right_forearm_supination"
    t.integer "left_forearm_supination"
    t.integer "right_wrist_flexion"
    t.integer "left_wrist_flexion"
    t.integer "right_wrist_extension"
    t.integer "left_wrist_extension"
    t.integer "right_first_hip_flexion"
    t.integer "left_first_hip_flexion"
    t.integer "right_second_hip_flexion"
    t.integer "left_second_hip_flexion"
    t.integer "right_first_hip_extension"
    t.integer "left_first_hip_extension"
    t.integer "right_second_hip_extension"
    t.integer "left_second_hip_extension"
    t.integer "right_hip_adduction"
    t.integer "left_hip_adduction"
    t.integer "right_first_hip_abduction"
    t.integer "left_first_hip_abduction"
    t.integer "right_second_hip_abduction"
    t.integer "left_second_hip_abduction"
    t.integer "right_hip_internal_rotation"
    t.integer "left_hip_internal_rotation"
    t.integer "right_hip_external_rotation"
    t.integer "left_hip_external_rotation"
    t.integer "right_knee_flexion"
    t.integer "left_knee_flexion"
    t.integer "right_knee_extension"
    t.integer "left_knee_extension"
    t.integer "right_ankle_flexion"
    t.integer "left_ankle_flexion"
    t.float "right_ankle_extension"
    t.float "left_ankle_extension"
    t.integer "right_ankle_pronation"
    t.integer "left_ankle_pronation"
    t.integer "right_ankle_supination"
    t.integer "left_ankle_supination"
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_mmt_scales_on_patient_id"
  end

  create_table "nrs_scales", force: :cascade do |t|
    t.integer "rating"
    t.integer "status"
    t.string "supplement"
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_nrs_scales_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.integer "age"
    t.integer "sex"
    t.float "height"
    t.float "weight"
    t.bigint "therapist_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["therapist_id"], name: "index_patients_on_therapist_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "rom_scales", force: :cascade do |t|
    t.integer "right_shoulder_flexion"
    t.integer "left_shoulder_flexion"
    t.integer "right_shoulder_extension"
    t.integer "left_shoulder_extension"
    t.integer "right_shoulder_adduction"
    t.integer "left_shoulder_adduction"
    t.integer "right_shoulder_abduction"
    t.integer "left_shoulder_abduction"
    t.integer "right_first_shoulder_internal_rotation"
    t.integer "left_first_shoulder_internal_rotation"
    t.integer "right_first_shoulder_external_rotation"
    t.integer "left_first_shoulder_external_rotation"
    t.integer "right_second_shoulder_internal_rotation"
    t.integer "left_second_shoulder_internal_rotation"
    t.integer "right_second_shoulder_external_rotation"
    t.integer "left_second_shoulder_external_rotation"
    t.integer "right_third_shoulder_internal_rotation"
    t.integer "left_third_shoulder_internal_rotation"
    t.integer "right_third_shoulder_external_rotation"
    t.integer "left_third_shoulder_external_rotation"
    t.integer "right_elbow_flexion"
    t.integer "left_elbow_flexion"
    t.integer "right_elbow_extension"
    t.integer "left_elbow_extension"
    t.integer "right_forearm_pronation"
    t.integer "left_forearm_pronation"
    t.integer "right_forearm_supination"
    t.integer "left_forearm_supination"
    t.integer "right_wrist_flexion"
    t.integer "left_wrist_flexion"
    t.integer "right_wrist_extension"
    t.integer "left_wrist_extension"
    t.integer "right_wrist_adduction"
    t.integer "left_wrist_adduction"
    t.integer "right_wrist_abduction"
    t.integer "left_wrist_abduction"
    t.integer "right_hip_flexion"
    t.integer "left_hip_flexion"
    t.integer "right_hip_extension"
    t.integer "left_hip_extension"
    t.integer "right_hip_adduction"
    t.integer "left_hip_adduction"
    t.integer "right_hip_abduction"
    t.integer "left_hip_abduction"
    t.integer "right_hip_internal_rotation"
    t.integer "left_hip_internal_rotation"
    t.integer "right_hip_external_rotation"
    t.integer "left_hip_external_rotation"
    t.integer "right_knee_flexion"
    t.integer "left_knee_flexion"
    t.integer "right_knee_extension"
    t.integer "left_knee_extension"
    t.integer "right_first_ankle_flexion"
    t.integer "left_first_ankle_flexion"
    t.integer "right_second_ankle_flexion"
    t.integer "left_second_ankle_flexion"
    t.integer "right_ankle_extension"
    t.integer "left_ankle_extension"
    t.integer "right_ankle_adduction"
    t.integer "left_ankle_adduction"
    t.integer "right_ankle_abduction"
    t.integer "left_ankle_abduction"
    t.integer "right_ankle_pronation"
    t.integer "left_ankle_pronation"
    t.integer "right_ankle_supination"
    t.integer "left_ankle_supination"
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_rom_scales_on_patient_id"
  end

  create_table "sias_scales", force: :cascade do |t|
    t.integer "shoulder_motor_function"
    t.float "finger_motor_function"
    t.integer "hip_motor_function"
    t.integer "knee_motor_function"
    t.integer "foot_motor_function"
    t.float "upper_limb_muscle_tone"
    t.float "lower_limb_muscle_tone"
    t.float "upper_limb_tendon_reflex"
    t.float "lower_limb_tendon_reflex"
    t.integer "upper_limb_tactile"
    t.integer "lower_limb_tactile"
    t.integer "upper_limb_sense_of_position"
    t.integer "lower_limb_sense_of_position"
    t.integer "shoulder_joint_rom"
    t.integer "knee_joint_rom"
    t.integer "pain"
    t.integer "trunk_verticality"
    t.integer "abdominal_mmt"
    t.integer "visuospatial_cognition"
    t.float "speech"
    t.integer "gripstrength"
    t.integer "quadriceps_mmt"
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_sias_scales_on_patient_id"
  end

  create_table "tactile_scales", force: :cascade do |t|
    t.integer "right_upper_arm"
    t.integer "left_upper_arm"
    t.integer "right_forearm"
    t.integer "left_forearm"
    t.integer "right_hand"
    t.integer "left_hand"
    t.integer "right_thigh"
    t.integer "left_thigh"
    t.integer "right_lower_leg"
    t.integer "left_lower_leg"
    t.integer "right_rearfoot"
    t.integer "left_rearfoot"
    t.integer "right_forefoot"
    t.integer "left_forefoot"
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_tactile_scales_on_patient_id"
  end

  create_table "tendon_reflex_scales", force: :cascade do |t|
    t.integer "jaw"
    t.integer "abdominal"
    t.integer "right_pectoral"
    t.integer "left_pectoral"
    t.integer "right_biceps"
    t.integer "left_biceps"
    t.integer "right_triceps"
    t.integer "left_triceps"
    t.integer "right_brachioradialis"
    t.integer "left_brachioradialis"
    t.integer "right_pronator"
    t.integer "left_pronator"
    t.integer "right_patellar_tendon"
    t.integer "left_patellar_tendon"
    t.integer "right_achilles_tendon"
    t.integer "left_achilles_tendon"
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_tendon_reflex_scales_on_patient_id"
  end

  create_table "therapists", force: :cascade do |t|
    t.string "unique_id", default: "", null: false
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["unique_id"], name: "index_therapists_on_unique_id", unique: true
  end

  create_table "therapists_roles", id: false, force: :cascade do |t|
    t.bigint "therapist_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_therapists_roles_on_role_id"
    t.index ["therapist_id", "role_id"], name: "index_therapists_roles_on_therapist_id_and_role_id"
    t.index ["therapist_id"], name: "index_therapists_roles_on_therapist_id"
  end

  add_foreign_key "bathyesthesia_scales", "patients"
  add_foreign_key "bestest_scales", "patients"
  add_foreign_key "brs_scales", "patients"
  add_foreign_key "fact_scales", "patients"
  add_foreign_key "fbs_scales", "patients"
  add_foreign_key "hdsr_scales", "patients"
  add_foreign_key "mas_scales", "patients"
  add_foreign_key "mmt_scales", "patients"
  add_foreign_key "nrs_scales", "patients"
  add_foreign_key "patients", "therapists"
  add_foreign_key "rom_scales", "patients"
  add_foreign_key "sias_scales", "patients"
  add_foreign_key "tactile_scales", "patients"
  add_foreign_key "tendon_reflex_scales", "patients"
end
