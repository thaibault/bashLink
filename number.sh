#!/usr/bin/env bash
# -*- coding: utf-8 -*-
# region header
# Copyright Torben Sickert (info["~at~"]torben.website) 16.12.2012

# License
# -------

# This library written by Torben Sickert stand under a creative commons naming
# 3.0 unported license. see http://creativecommons.org/licenses/by/3.0/deed.de
# endregion
# shellcheck disable=SC2016,SC2034,SC2155
# region variables
bl_number__documentation__='
    The number module implements utility functions concerning numbers.
'
# endregion
# region functions
alias bl.number.calculate_percent=bl_number_calculate_percent
bl_number_calculate_percent() {
    __documentation__='
        Calculates percent of second argument from the first argument.

        >>> bl_number_calculate_percent 100 50
        50.00
    '
    echo "$(((($2 * 10000) / $1) / 100)).$(
        command sed \
            --regexp-extended \
            's/^(.)$/0\1/g' \
                <<<$(((($2 * 10000) / $1) % 100)))"
    return $?
}
# endregion
# region vim modline
# vim: set tabstop=4 shiftwidth=4 expandtab:
# vim: foldmethod=marker foldmarker=region,endregion:
# endregion
