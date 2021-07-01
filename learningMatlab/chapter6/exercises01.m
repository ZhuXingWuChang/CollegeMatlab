function [mile, seamile] = exercises01(kilometer)
MILE_PER_KILOMETER = 0.621;
KILOMETER_PER_SEAMILE = 1.852;
mile = kilometer * MILE_PER_KILOMETER;
seamile = kilometer / KILOMETER_PER_SEAMILE;
end