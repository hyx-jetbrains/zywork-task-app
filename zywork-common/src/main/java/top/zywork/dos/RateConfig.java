package top.zywork.dos;

import java.util.Map;

public class RateConfig {

    private Integer mode;
    private Map<String, Double> profitPercents;

    public RateConfig() {}

    public RateConfig(Integer mode, Map<String, Double> profitPercents) {
        this.mode = mode;
        this.profitPercents = profitPercents;
    }

    public Integer getMode() {
        return mode;
    }

    public void setMode(Integer mode) {
        this.mode = mode;
    }

    public Map<String, Double> getProfitPercents() {
        return profitPercents;
    }

    public void setProfitPercents(Map<String, Double> profitPercents) {
        this.profitPercents = profitPercents;
    }
}
