
(set-logic ALL) 

(declare-datatypes ((MyList 0)) (
    (
      (Nil)
      (Cons (Head Real) (Tail MyList))
    )
)) 
(declare-fun l0 () MyList) 
(declare-fun l1 () MyList) 
(declare-fun l2 () MyList) 
(declare-fun l3 () MyList) 
(declare-fun i0 () Real) 
(declare-fun i1 () Real) 
(assert (or (= l0 l3) (= l1 Nil) (= l3 Nil) (is-Cons l1)) )
(assert (= l0 l2) )
(assert (and (= l0 Nil) (= l0 Nil) (= l1 l2)) )
(assert (not (= l3 Nil)) )
(assert (= l0 Nil) )
(assert (is-Cons Nil) )
(assert (and (= l3 l3) (= l2 Nil)) )
(assert (and (= l1 Nil) (= l3 Nil)) )
(check-sat)
