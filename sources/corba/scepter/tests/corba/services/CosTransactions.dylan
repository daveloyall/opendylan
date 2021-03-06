Module: scepter-tests
Author: Jason Trenouth
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      See License.txt in this distribution for details.
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

define test corba-services-idl-CosTransactions ()
  check("", test-idl-file, *corba-services-files*, "CosTransactions");
end test;

add-idl-file!(
  *corba-services-files*,
  "CosTransactions",
"// CosTransactions Module, p 10-66\n"
"// CORBAservices, Transaction Service V1.0, 3/94\n"
"\n"
"module CosTransactions {\n"
"// DATATYPES\n"
"enum Status {\n"
"\tStatusActive,\n"
"\tStatusMarkedRollback,\n"
"\tStatusPrepared,\n"
"\tStatusCommitted,\n"
"\tStatusRolledBack,\n"
"\tStatusUnknown,\n"
"\tStatusNoTransaction\n"
"};\n"
"\n"
"enum Vote {\n"
"\tVoteCommit,\n"
"\tVoteRollback,\n"
"\tVoteReadOnly\n"
"};\n"
"\n"
"// Standard exceptions\n"
"exception TransactionRequired {};\n"
"exception TransactionRolledBack {};\n"
"exception InvalidTransaction {};\n"
"\n"
"// Heuristic exceptions\n"
"exception HeuristicRollback {};\n"
"exception HeuristicCommit {};\n"
"exception HeuristicMixed {};\n"
"exception HeuristicHazard {};\n"
"\n"
"// Exception from Orb operations\n"
"exception WrongTransaction {};\n"
"\n"
"// Other transaction-specific exceptions\n"
"exception SubtransactionsUnavailable {};\n"
"exception NotSubtransaction {};\n"
"exception Inactive {};\n"
"exception NotPrepared {};\n"
"exception NoTransaction {};\n"
"exception InvalidControl {};\n"
"exception Unavailable {};\n"
"\n"
"// Forward references for interfaces defined later in module\n"
"interface Control;\n"
"interface Terminator;\n"
"interface Coordinator;\n"
"interface Resource;\n"
"interface RecoveryCoordinator;\n"
"interface SubtransactionAwareResource;\n"
"interface TransactionFactory; \n"
"interface TransactionalObject; \n"
"interface Current;\n"
"\n"
"// Current transaction pseudo object (PIDL)\n"
"interface Current {\n"
"\tvoid begin()\n"
"\t\traises(SubtransactionsUnavailable);\n"
"\tvoid commit(in boolean report_heuristics)\n"
"\t\traises(\n"
"\t\t\tNoTransaction,\n"
"\t\t\tHeuristicMixed,\n"
"\t\t\tHeuristicHazard\n"
"\t\t);\n"
"\tvoid rollback()\n"
"\t\traises(NoTransaction);\n"
"\tvoid rollback_only()\n"
"\t\traises(NoTransaction);\n"
"\n"
"\tStatus get_status();\n"
"\tstring get_transaction_name();\n"
"\tvoid set_timeout(in unsigned long seconds);\n"
"\n"
"\tControl get_control();\n"
"\tControl suspend();\n"
"\tvoid resume(in Control which)\n"
"\t\traises(InvalidControl);\n"
"};\n"
"\n"
"interface TransactionFactory {\n"
"\tControl create(in unsigned long time_out);\n"
"};\n"
"\n"
"interface Control {\n"
"\tTerminator get_terminator()\n"
"\t\traises(Unavailable);\n"
"\tCoordinator get_coordinator()\n"
"\t\traises(Unavailable);\n"
"};\n"
"\n"
"interface Terminator {\n"
"\tvoid commit(in boolean report_heuristics)\n"
"\t\traises(\n"
"\t\t\tHeuristicMixed,\n"
"\t\t\tHeuristicHazard\n"
"\t\t);\n"
"\tvoid rollback();\n"
"};\n"
"\n"
"\n"
"interface Coordinator {\n"
"\n"
"\tStatus get_status();\n"
"\tStatus get_parent_status();\n"
"\tStatus get_top_level_status();\n"
"\n"
"\tboolean is_same_transaction(in Coordinator tc);\n"
"\tboolean is_related_transaction(in Coordinator tc);\n"
"\tboolean is_ancestor_transaction(in Coordinator tc);\n"
"\tboolean is_descendant_transaction(in Coordinator tc);\n"
"\tboolean is_top_level_transaction();\n"
"\n"
"\tunsigned long hash_transaction();\n"
"\tunsigned long hash_top_level_tran();\n"
"\n"
"\tRecoveryCoordinator register_resource(in Resource r)\n"
"\t\traises(Inactive);\n"
"\n"
"\tvoid register_subtran_aware(in SubtransactionAwareResource r)\n"
"\t\traises(Inactive, NotSubtransaction);\n"
"\n"
"\tvoid rollback_only()\n"
"\t\traises(Inactive);\n"
"\n"
"\tstring get_transaction_name();\n"
"\n"
"\tControl create_subtransaction()\n"
"\t\traises(SubtransactionsUnavailable, Inactive);\n"
"};\n"
"\n"
"interface RecoveryCoordinator {\n"
"\tStatus replay_completion(in Resource r)\n"
"\t\traises(NotPrepared);\n"
"};\n"
"};\n"
"\n");
