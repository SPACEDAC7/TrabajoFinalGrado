/*
 * Decompiled with CFR 0_115.
 */
package com.buzzfeed.toolkit.dustbuster;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class DustbusterEventCollection {
    private List<DustbusterCollectionEvent> mEvents = new ArrayList<DustbusterCollectionEvent>();

    public void addEvent(DustbusterCollectionEvent dustbusterCollectionEvent) {
        this.mEvents.add(dustbusterCollectionEvent);
    }

    public void addEvent(String string2, Map<String, Object> map) {
        this.mEvents.add(new DustbusterCollectionEvent(string2, map));
    }

    public List<DustbusterCollectionEvent> getEvents() {
        return this.mEvents;
    }

    public static class DustbusterCollectionEvent {
        private Map<String, Object> mMetadata;
        private String mType;

        public DustbusterCollectionEvent(String string2, Map<String, Object> map) {
            this.mType = string2;
            this.mMetadata = map;
        }

        public Map<String, Object> getMetadata() {
            return this.mMetadata;
        }

        public String getType() {
            return this.mType;
        }

        public void setMetadata(Map<String, Object> map) {
            this.mMetadata = map;
        }

        public void setType(String string2) {
            this.mType = string2;
        }
    }

}

