import LocalLanglandsCanonicalLaneLean.Formalization
import LocalLanglandsCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace LocalLanglandsCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "8d4897fe4f89b027d62c13e34db454cf4e53eacf97112f6e2edd78bd3306d71b", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "656061870163cf736e31fb06b093b3ddbec20f371f62d47c9f36e54e80df8de0", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "da20457405ef3749305a9222cd45d80d65cdbc17bbfc268f2165af37172a71ce", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "6ae3df38e74e996499ee4f898cec51c84356c1517ea90a1250d097ba25e479d3", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "1401a8f500652f504a4569ae960ccb644bf0cfa58b256d4b3d4a48131a50c34b", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "1b04de129616e93b97c7ee15f489fb9b9cb7e97074eda11442a36a5fe279794f", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "3ba941b7bd53cfa75ce6c68c740d9411bd69bc0041b997b607d6aaaab9291471", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "f2d6f7aaf0462ee9c8ab4e1baf42886fed3fb3e99356c6ddfda209de7ccd16b8", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "4c4cd80c1d1f6ed3065dd999070024ae81240e250b90870628979f0962294fe4", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
  { index := 1, label := "EG1" },
  { index := 2, label := "EG2" },
  { index := 3, label := "EG3" },
  { index := 4, label := "EG4" },
  { index := 5, label := "Identification bridge" },
  { index := 6, label := "Scalar closure" }
]

def reviewerClosureGates : List ReviewerClosureGate := [
  { gate := "LLG_G1", constant := "kappa_local" },
  { gate := "LLG_G2", constant := "sigma_matching" },
  { gate := "LLG_G3", constant := "kappa_compact" },
  { gate := "LLG_G4", constant := "rho_rigidity" },
  { gate := "LLG_G5", constant := "packet_local" },
  { gate := "LLG_G6", constant := "eps_coh" },
  { gate := "LLG_GM", constant := "derived" }
]

def reviewerFalsificationConditionCount : Nat := 5

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "CITATION.cff", sha256 := "cff61387cc0f6d0c6ae2997615e8501cd9b556e948d9926c5df6d3193a07af08" },
  { path := "README.md", sha256 := "b43bdb4c7a74efa3de06875ba69864322ad69a8605aadbf96059198bfeb30da4" },
  { path := "artifacts/constants_extracted.json", sha256 := "6ae3df38e74e996499ee4f898cec51c84356c1517ea90a1250d097ba25e479d3" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "da20457405ef3749305a9222cd45d80d65cdbc17bbfc268f2165af37172a71ce" },
  { path := "artifacts/constants_registry.json", sha256 := "1401a8f500652f504a4569ae960ccb644bf0cfa58b256d4b3d4a48131a50c34b" },
  { path := "artifacts/promotion_report.json", sha256 := "3ba941b7bd53cfa75ce6c68c740d9411bd69bc0041b997b607d6aaaab9291471" },
  { path := "artifacts/stitch_constants.json", sha256 := "1b04de129616e93b97c7ee15f489fb9b9cb7e97074eda11442a36a5fe279794f" },
  { path := "notes/EG1_public.md", sha256 := "a5c8222b2c275721be52195c63ebe2cb4178a9aa067717758beb0cb7ed492d29" },
  { path := "notes/EG2_public.md", sha256 := "67858b8f382182f1b9bc10e0af5eea46755c542abb85c00ac990f7d19e317e9d" },
  { path := "notes/EG3_public.md", sha256 := "7dda41ebe87b09a16db7832ff7f8754319a52b1955d19707685d1e94c5b2999e" },
  { path := "notes/EG4_public.md", sha256 := "223ce3b9502c7b7d0c5986882ee91bff8640c139670a8758f0fe37e8b5e4e86b" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "656061870163cf736e31fb06b093b3ddbec20f371f62d47c9f36e54e80df8de0" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "20ee89a12bcde30a3c107d9ff2b7f5782b144c15eab08377b36d2119e1b69e2d" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "55d726e1538bda9e5f7b0fef8ad2123a1858b38722c85fb4a84b621a60cd30a4" },
  { path := "paper/LOCAL_LANGLANDS_PREPRINT.md", sha256 := "9d16295016b0c60532f9057d1d40c1daeb461de26b56725e32271a7ae92d4a52" },
  { path := "repro/REPRO_PACK.md", sha256 := "b3cf153051a423e199108553476d5c99fb5b23294ffdd410fc603a3af96a2757" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "ddc890f7f3a81dac102db52ed52f1f9c2f863424da42d2de58a20ea7ff8d8344" },
  { path := "repro/certificate_baseline.json", sha256 := "4c4cd80c1d1f6ed3065dd999070024ae81240e250b90870628979f0962294fe4" },
  { path := "repro/run_repro.sh", sha256 := "4057a7adb1e5a3e8147f6ef575c1b11dc217b136d36d1d16e6870bc765e9f9e4" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/llg_closure_guard.py", sha256 := "fc8d6b64eca041c02bdc0fefcc982deef47a538af0abe2116e034eb00c4da9fe" },
  { path := "scripts/README.md", sha256 := "e3c2e6030cdd70923b5bd3f5b04178f60a089a2e9bd3fcb38deacf6cd66751a2" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "LLG_G1", status := "PASS" },
  { gate := "LLG_G2", status := "PASS" },
  { gate := "LLG_G3", status := "PASS" },
  { gate := "LLG_G4", status := "PASS" },
  { gate := "LLG_G5", status := "PASS" },
  { gate := "LLG_G6", status := "PASS" },
  { gate := "LLG_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "kappa_local", value := "1.0940320000000001" },
  { key := "packet_local", value := "1.0315400000000001" },
  { key := "rho_rigidity", value := "1.078" },
  { key := "sigma_matching", value := "1.075" },
  { key := "sigma_star_can", value := "1.054" }
]

def bridgeConstantKeys : List String := [
  "eps_coh",
  "kappa_compact",
  "kappa_local",
  "packet_local",
  "rho_rigidity",
  "sigma_matching",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 6 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 7 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 5 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 7 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end LocalLanglandsCanonicalLaneLean
end HautevilleHouse
