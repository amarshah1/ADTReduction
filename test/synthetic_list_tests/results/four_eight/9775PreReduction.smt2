
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
(assert (= l3 Nil) )
(assert (and (= l3 Nil) (is-Cons Nil) (= l2 Nil) (is-Cons Nil)) )
(assert (and (is-Cons l3) (= l3 Nil) (= l1 Nil)) )
(assert (= l2 l3) )
(assert (is-Nil Nil) )
(assert (not (= l3 l0)) )
(assert (not (= l3 l2)) )
(assert (and (is-Nil Nil) (is-Nil Nil) (is-Nil Nil) (is-Nil Nil)) )
(check-sat)
