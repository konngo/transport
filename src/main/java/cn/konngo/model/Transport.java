package cn.konngo.model;

public class Transport {
    int id;
    String name;
    String luxian;
    String shifa;
    String zhongdian;
    String descriptions;

    public int getId() {
        return id;
    }

    public String getDescriptions() {
        return descriptions;
    }

    public void setDescriptions(String descriptions) {
        this.descriptions = descriptions;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLuxian() {
        return luxian;
    }

    public void setLuxian(String luxian) {
        this.luxian = luxian;
    }

    public String getShifa() {
        return shifa;
    }

    public void setShifa(String shifa) {
        this.shifa = shifa;
    }

    public String getZhongdian() {
        return zhongdian;
    }

    public void setZhongdian(String zhongdian) {
        this.zhongdian = zhongdian;
    }

    @Override
    public String toString() {
        return "Transport{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", luxian='" + luxian + '\'' +
                ", zhongdian='" + zhongdian + '\'' +
                '}';
    }
}
