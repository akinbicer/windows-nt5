;/*++ BUILD Version: 0001    // Increment this if a change has global effects
;
;Copyright (c) 1994-7  Microsoft Corporation
;
;Module Name:
;
;    binlmsg.h
;
;Abstract:
;
;    Definitions for BINL messages.
;
;Author:
;
;    Colin Watson (colinw)  14-Apr-1997
;
;Revision History:
;
;Notes:
;
;    This file is generated by the MC tool from the binlmsg.mc file.
;
;    Inserts are defined as:
;    %1 = USERNAME
;    %2 = USERDOMAIN
;    %3 = MACHINENAME
;    %4 = SUBERROR
;
;--*/
;
;#ifndef _BINLMESSAGE_
;#define _BINLMESSAGE_
;

;//
;//  20000 - 20099   Reserved for BINL service service specific errors.
;//

MessageId=20001 SymbolicName=ERROR_BINL_SHARE_NOT_FOUND
Language=English
The Remote Installation service cannot start because the server share
REMINST is missing. Rerun RISETUP.
.

MessageId=20002 SymbolicName=ERROR_BINL_DUPLICATE_MACHINE_NAME_FOUND
Language=English
The Remote Installation service found an existing computer object with that name.
.

MessageId=20003 SymbolicName=ERROR_BINL_INVALID_MACHINE_NAME
Language=English
The specified computer name is not a valid computer name. It may 
contain illegal characters. Standard names contain letters (a-z, A-Z), 
numbers (0-9), and hyphens (-), but no spaces or periods (.), and 
the name may not consist entirely of digits.
.

MessageId=20004 SymbolicName=ERROR_BINL_INVALID_OR_MISSING_OU
Language=English
The specified distinguished name for creation of the computer
object is incorrect or missing.
.

MessageId=20005 SymbolicName=ERROR_BINL_UNABLE_TO_GENERATE_MACHINE_NAME
Language=English
The Remote Installation service cannot generate a unique name for the
client computer.
.

MessageId=20006 SymbolicName=ERROR_BINL_FAILED_TO_CREATE_TEMP_SIF
Language=English
The Remote Installation service cannot generate a temporary answer file for the
client computer.
.

MessageId=20007 SymbolicName=ERROR_BINL_FAILED_TO_GENERATE_SCREEN
Language=English
The Remote Installation service cannot generate the required screen requested by
the client computer.
.

MessageId=20008 SymbolicName=ERROR_BINL_USER_LOGIN_FAILED
Language=English
User %2\%1 attempted to log on via the Remote Installation service and failed.
.

MessageId=20009 SymbolicName=ERROR_BINL_LOGON_TYPE_NOT_GRANTED
Language=English
User %2\%1 does not have batch logon rights to this server.
.

MessageId=20010 SymbolicName=ERROR_BINL_CLIENT_TIMEOUT
Language=English
The client's connection to the server has expired.
.

MessageId=20014 SymbolicName=ERROR_BINL_CLIENT_EXISTS
Language=English
The specified client already exists in the database.
.

MessageId=20015 SymbolicName=ERROR_BINL_INVALID_BINL_MESSAGE
Language=English
The Remote Installation service received an invalid message.
.

MessageId=20016 SymbolicName=ERROR_BINL_INVALID_BINL_CLIENT
Language=English
The Remote Installation service received a message from an invalid client.
.

MessageId=20017 SymbolicName=ERROR_BINL_SERVICE_PAUSED
Language=English
The Remote Installation service service is paused.
.

MessageId=20035 SymbolicName=ERROR_BINL_INITIALIZE_LDAP_CONNECTION_FAILED
Language=English
The Remote Installation service cannot contact the directory service.
.

MessageId=20036 SymbolicName=ERROR_BINL_CD_IMAGE_NOT_FOUND
Language=English
The Remote Installation service cannot locate a flat image with a version that
matches the version of the RIPREP image.
.

MessageId=20037 SymbolicName=ERROR_BINL_MISSING_VARIABLE
Language=English
The Remote Installation service does not have all the necessary information to perform the
requested action.
.

MessageId=20038 SymbolicName=ERROR_BINL_CANT_FIND_SERVER_MAO
Language=English
The Remote Installation service cannot find the computer object for this server.
.

MessageId=20039 SymbolicName=ERROR_BINL_UNABLE_TO_CONVERT_TO_DN
Language=English
The Remote Installation service cannot convert %4 to 1779 DN form.
.

MessageId=20040 SymbolicName=ERROR_BINL_INVALID_GUID
Language=English
The value given is not a valid GUID.
.

MessageId=20041 SymbolicName=ERROR_BINL_HAL_NOT_FOUND
Language=English
The Remote Installation service cannot locate and copy a new HAL for the
client. The client computer might not boot properly.
.

MessageId=20042 SymbolicName=ERROR_SERVER_KERNEL_NOT_FOUND
Language=English
The Remote Installation service cannot locate a bootable operating system with a version that
matches or exceeds the version of the remote installation OS image.
.

MessageId=20043 SymbolicName=ERROR_BINL_UNABLE_TO_CONVERT
Language=English
The Remote Installation service cannot convert the information to the new format.
.

;#if defined(REMOTE_BOOT)
;MessageId=20044 SymbolicName=ERROR_BINL_REPLACE_MACHINE_FAILED
;Language=English
;The Remote Installation service was unable to update the machine account
;object (MAO).
;.
;#endif // defined(REMOTE_BOOT)

MessageId=20045 SymbolicName=ERROR_BINL_FAILED_TO_UPDATE_SCP
Language=English
The Remote Installation service cannot update its service control point.
.

MessageId=20046 SymbolicName=ERROR_BINL_FAILED_TO_INITIALIZE_CLIENT
Language=English
The Remote Installation service cannot create an initial client state.
.

MessageId=20047 SymbolicName=ERROR_BINL_FAILED_TO_CREATE_CLIENT
Language=English
The Remote Installation service cannot create a new computer object for this client.
Last recorded error was: %4
.

MessageId=20048 SymbolicName=ERROR_BINL_FAILED_TO_CREATE_CLIENT_DIRECTORY
Language=English
The Remote Installation service cannot create the initial folder structure for the client.
.

MessageId=20049 SymbolicName=ERROR_BINL_NO_SIFFILE_ATTRIBUTE
Language=English
The Remote Installation service cannot restart Setup because the
client has no previous Setup answer file stored in
the directory service.
.

MessageId=20050 SymbolicName=ERROR_BINL_SIFFILE_NOT_FOUND
Language=English
The Remote Installation service cannot restart Setup because the
Setup answer file specified in the directory service
cannot be found.
.

MessageId=20051 SymbolicName=ERROR_BINL_SCREEN_TOO_LONG
Language=English
The Remote Installation service sent a screen file to the client which
was too long for the client to display.
.

MessageId=20052 SymbolicName=ERROR_BINL_NO_DN_AVAILABLE_FOR_SERVER
Language=English
The Remote Installation service is unable to read it's configuration from the
directory service and therefore has denied a client's request for service.
.

MessageId=20053 SymbolicName=ERROR_BINL_SCP_CREATION_FAILED
Language=English
The Remote Installation service was unable to create it's service control point and will run
with default settings until the service is restarted.

The specific error is %n%1.
.

;//
;//  1000 - 1099   Reserved for Remote Installation service events.
;//

MessageId=1001 SymbolicName=EVENT_SERVER_FAILED_REGISTER_SC
Language=English
The Remote Installation service cannot register with the service controller. The
following error occurred: %n%1
.

MessageId=1002 SymbolicName=EVENT_SERVER_INIT_DATA_FAILED
Language=English
The Remote Installation service cannot initialize its global data. The following
error occurred: %n%1
.

MessageId=1003 SymbolicName=EVENT_SCP_READ_SUCCESSFULLY
Language=English
The Remote Installation service successfully read its settings from the directory
service.
.

MessageId=1004 SymbolicName=EVENT_COMPUTER_ACCOUNT_CREATED_SUCCESSFULLY
Language=English
The Remote Installation service successfully created the computer object: %1 by user: %2.
.

MessageId=1005 SymbolicName=EVENT_SERVER_INIT_WINSOCK_FAILED
Language=English
The Remote Installation service cannot initialize winsock startup. The following
error occurred: %n%1
.

MessageId=1006 SymbolicName=EVENT_SERVER_INIT_PARAMETERS_FAILED
Language=English
The Remote Installation service cannot read parameters from the directory service
and/or the registry. The following error occurred: %n%1.%n
The server will continue to try to read the parameters.
.

MessageId=1007 SymbolicName=EVENT_SCP_READ_SUCCESSFULLY_EMPTY
Language=English
The Remote Installation service successfully read its settings from the directory
service. However, none of the attributes that affect the operation
of the Remote Installation service were present in the data returned by the directory
service. This may indicate a problem with the access rights settings
on the IntelliMirror Service object for this server. The Remote Installation service
will operate with all of its settings at their default values.
.

MessageId=1008 SymbolicName=EVENT_SERVER_SHUTDOWN
Language=English
The Remote Installation service is shutting down due to the following error: %n%1
.

MessageId=1024 SymbolicName=EVENT_SERVER_INIT_AND_READY
Language=English
The Remote Installation service is initialized and ready.
.

MessageId=1033 SymbolicName=EVENT_SERVER_DS_WAIT_FAILED
Language=English
The Remote Installation service cannot connect to the directory service.
.

MessageId=1034 SymbolicName=EVENT_SERVER_CLIENT_WITHOUT_GUID
Language=English
The Remote Installation service received a request from a client that does not
have a GUID.  The NIC address of the client is: %1.
.

MessageId=1035 SymbolicName=BINL_CANT_FIND_SERVER_MAO
Language=English
The Remote Installation service cannot find the computer object for %1 in the directory service.
The error is in the record data.
.

MessageId=1036 SymbolicName=BINL_DUPLICATE_DS_RECORD
Language=English
The Remote Installation service found multiple records for a given GUID.
The Remote Installation service will not respond to the client's request.
GUID: %1
First Machine: %2
Second Machine: %3
.

MessageId=1037 SymbolicName=BINL_DUPLICATE_MAO_RECORD
Language=English
The Remote Installation service found multiple records for this server's
computer object.  The Remote Installation service is stopping.
.

MessageId=1038 SymbolicName=ERROR_BINL_ERR_COPY_DRIVER
Language=English
An error occurred while the Remote Installation service copied a net card driver from the Setup
folder to the client's folder. The record data is the error.
.

MessageId=1039 SymbolicName=EVENT_SERVER_OSC_NO_DEFAULT_SHARE_FOUND
Language=English
The Remote Installation service cannot find the default server share. Run
Risetup.exe again to fix the problem. Error: %n%1
.

MessageId=1040 SymbolicName=EVENT_ERROR_READING_OSC_SCREEN
Language=English
The Remote Installation service encountered an error while trying to read %2. The error
is contained in the record data.
.

MessageId=1041 SymbolicName=ERROR_BINL_ERR_USER_LOGIN_FAILED
Language=English
User %2\%1 attempted to log on via the Remote Installation service and failed.
The error is contained in the record data.
.

MessageId=1042 SymbolicName=EVENT_ERROR_SERVER_SIDE_ERROR
Language=English
An error was generated by OS Chooser. The error code is in the record data.
User: %1
Domain: %2
Computer Name: %3
.

MessageId=1043 SymbolicName=EVENT_ERROR_GENERATING_SERVER_SIDE_ERROR
Language=English
The Remote Installation service caused a server side error occurred. The error code
is in the record data.
.

MessageId=1044 SymbolicName=EVENT_ERROR_LOCATING_SCP
Language=English
The Remote Installation service encountered an error while reading its settings
from the directory service.
.

MessageId=1045 SymbolicName=EVENT_ERROR_DHCP_AUTHORIZED
Language=English
The Remote Installation service has been authorized to run on this server by the DHCP
service.
.

MessageId=1046 SymbolicName=EVENT_ERROR_DHCP_NOT_AUTHORIZED
Language=English
The Remote Installation service has been notified by the DHCP service that it is not
authorized to run on this server.  The Remote Installation service will not respond to
client requests.
.

MessageId=1047 SymbolicName=EVENT_WARNING_LDAP_SEARCH_ERROR
Language=English
The Remote Installation service encountered an error from the %1 directory service while
attempting a search.  The error code is in the record data.
.

MessageId=1048 SymbolicName=EVENT_WARNING_LDAP_MODIFY_ERROR
Language=English
The Remote Installation service encountered an error from the %1 directory service while
attempting to modify a DS record.  The error code is in the record data.
.

MessageId=1049 SymbolicName=EVENT_WARNING_LDAP_ADD_ERROR
Language=English
The Remote Installation service encountered an error from the %1 directory service while
attempting to modify a DS record.  The error code is in the record data.
.


MessageId=1050 SymbolicName=EVENT_WARNING_LDAP_INIT_ERROR_DC
Language=English
The Remote Installation service encountered an error while attempting to connect to the
directory service via the domain controller.  The error code is in the 
record data.
.

MessageId=1051 SymbolicName=EVENT_WARNING_LDAP_BIND_ERROR
Language=English
The Remote Installation service encountered an error while attempting to bind to the
%1 directory service.  The error code is in the record data.
.

MessageId=1052 SymbolicName=EVENT_WARNING_LDAP_ERRORS
Language=English
The Remote Installation service encountered multiple errors from the directory service
within the last %1 seconds.  The number of errors is in the record data.
.

MessageId=1053 SymbolicName=EVENT_WARNING_LDAP_INIT_ERROR_GC
Language=English
The Remote Installation service encountered an error while attempting to connect to the
directory service via the global catalog.  The error code is in the 
record data.
.



;//
;//  1100 - 1199 Reserved for inf parsing routines
;//
;//

MessageId=1100 SymbolicName=ERROR_BINL_ERR_IN_INF
Language=English
An error occurred during parsing of an INF file.  Some network drivers
may not have been parsed correctly.
.

MessageId=1101 SymbolicName=ERROR_BINL_ERR_IN_SECTION
Language=English
An error occurred during parsing of an INF file in the given section.
.

MessageId=1102 SymbolicName=ERROR_BINL_ERR_IN_SETUP_PATH
Language=English
An error occurred during parsing of INF files in the given directory.
.

;#endif // _BINLMESSAGE_
