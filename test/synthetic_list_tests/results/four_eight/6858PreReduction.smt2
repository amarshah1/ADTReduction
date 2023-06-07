
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
(assert (is-Cons l2) )
(assert (is-Nil l2) )
(assert (not (is-Cons Nil)) )
(assert (and (= l3 Nil) (= l3 Nil)) )
(assert (or (is-Cons l3) (= l1 Nil) (is-Nil Nil) (= l2 Nil)) )
(assert (is-Cons Nil) )
(assert (= l3 l3) )
(assert (not (= l3 Nil)) )
(check-sat)
