// Nova seção de mapa com pontos piscando
<div className="fade-up flex justify-center" style={{ transitionDelay: "0.2s" }}>
  <div
    className="rounded-2xl p-8 text-center relative"
    style={{
      background: "#0D0D0D",
      maxWidth: "500px",
      width: "100%",
      aspectRatio: "1",
      border: "1px solid rgba(245,197,24,0.3)",
      display: "flex",
      alignItems: "center",
      justifyContent: "center",
      overflow: "hidden",
      position: "relative",
    }}
  >
    {/* Map icon in center */}
    <div style={{ position: "absolute", fontSize: "4rem", zIndex: 10 }}>🗺️</div>

    {/* Pulsing dots in various regions */}
    {[
      { top: "15%", left: "25%", delay: "0s" },
      { top: "20%", left: "70%", delay: "0.3s" },
      { top: "35%", left: "45%", delay: "0.6s" },
      { top: "50%", left: "65%", delay: "0.9s" },
      { top: "65%", left: "35%", delay: "1.2s" },
      { top: "70%", left: "70%", delay: "1.5s" },
      { top: "40%", left: "20%", delay: "1.8s" },
    ].map((dot, i) => (
      <div
        key={i}
        style={{
          position: "absolute",
          top: dot.top,
          left: dot.left,
          width: "12px",
          height: "12px",
          background: "#F5C518",
          borderRadius: "50%",
          animation: "pulse-dot 2s infinite",
          animationDelay: dot.delay,
        }}
      />
    ))}

    <style>{`
      @keyframes pulse-dot {
        0% { opacity: 1; transform: scale(1); }
        50% { opacity: 0.3; transform: scale(0.7); }
        100% { opacity: 0; transform: scale(0.5); }
      }
    `}</style>
  </div>
</div>
