import pandas as pd
import numpy as np


def g(df):
    df[["time", "number"]] = df.duration.str.extract(r"\s*(.*)(\d+)", expand=True)
    for i in df.index:
        df.loc[i, "time"] = df.loc[i, "time"].strip()
    df["time_days"] = df["time"].replace(
        ["year", "month", "week", "day"], [365, 30, 7, 1], regex=True
    )
    return df


def define_test_input(args):
    if args.test_case == 1:
        df = pd.DataFrame(
            {"duration": ["year 7", "day2", "week 4", "month 8"]},
            index=list(range(1, 5)),
        )
    if args.test_case == 2:
        df = pd.DataFrame(
            {"duration": ["year 2", "day6", "week 8", "month 7"]},
            index=list(range(1, 5)),
        )
    return df


if __name__ == "__main__":
    import argparse
    import os
    import pickle

    parser = argparse.ArgumentParser()
    parser.add_argument("--test_case", type=int, default=1)
    args = parser.parse_args()

    df = define_test_input(args)

    with open("input/input{}.pkl".format(args.test_case), "wb") as f:
        pickle.dump(df, f)

    result = g(df)
    with open("ans/ans{}.pkl".format(args.test_case), "wb") as f:
        pickle.dump(result, f)
