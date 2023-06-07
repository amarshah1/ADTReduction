
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
(assert (is-Cons Nil) )
(assert (or (= l0 Nil) (= l1 Nil) (= l3 Nil) (= l2 Nil)) )
(assert (not (= l2 Nil)) )
(assert (not (is-Nil Nil)) )
(assert (is-Cons l3) )
(assert (= l1 l3) )
(assert (= l2 Nil) )
(assert (and (is-Nil Nil) (= l2 Nil) (= l3 Nil) (= l3 l1)) )
(check-sat)
