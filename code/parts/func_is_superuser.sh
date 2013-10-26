#!/bin/sh
set -e

IsSuperuser() {
	case `id` in
		"uid=0("* ) return 0 ;;
		* )         return 1 ;;
	esac
}

#exit 1;
