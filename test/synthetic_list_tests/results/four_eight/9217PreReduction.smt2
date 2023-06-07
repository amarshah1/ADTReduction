
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
(assert (or (is-Nil Nil) (= l3 Nil)) )
(assert (is-Cons Nil) )
(assert (not (is-Cons Nil)) )
(assert (not (is-Cons l0)) )
(assert (and (= l2 Nil) (= l1 Nil) (= l3 Nil) (= l2 l1)) )
(assert (not (= l0 Nil)) )
(assert (is-Cons Nil) )
(assert (and (= l2 l3) (is-Cons Nil) (= l3 l0)) )
(check-sat)
